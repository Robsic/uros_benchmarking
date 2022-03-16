
#include "multi_3_topic/ping_node.hpp"
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/u_int32.hpp"

#include <algorithm>
#include <functional>
#include <memory>
#include <vector>
#include <fstream>
#include <utility> 



Ping::Ping() : rclcpp::Node("ping","ros2"){

    using std::placeholders::_1;   

    using namespace std::chrono_literals;

    auto default_qos = rclcpp::QoS(rclcpp::SystemDefaultsQoS());

    ping_period = 10000000ns;

    callback_group_pong_1 = this->create_callback_group(rclcpp::CallbackGroupType::MutuallyExclusive);
    callback_group_pong_2 = this->create_callback_group(rclcpp::CallbackGroupType::MutuallyExclusive);
    callback_group_pong_3 = this->create_callback_group(rclcpp::CallbackGroupType::MutuallyExclusive);

    rclcpp::SubscriptionOptions pong_1_sub_opt;
    rclcpp::SubscriptionOptions pong_2_sub_opt;
    rclcpp::SubscriptionOptions pong_3_sub_opt;

    pong_1_sub_opt.callback_group = callback_group_pong_1;
    pong_2_sub_opt.callback_group = callback_group_pong_2;
    pong_3_sub_opt.callback_group = callback_group_pong_3;

    timer_ = this->create_wall_timer(ping_period, std::bind(&Ping::onTimerPing, this));
    pong_1_sub = this->create_subscription<std_msgs::msg::UInt32>("/pong_1", default_qos, std::bind(&Ping::onPong1Callback, this, _1),pong_1_sub_opt);
    ping_1_pub = this->create_publisher<std_msgs::msg::UInt32>("/ping_1", default_qos);
    pong_2_sub = this->create_subscription<std_msgs::msg::UInt32>("/pong_2", default_qos, std::bind(&Ping::onPong2Callback, this, _1),pong_2_sub_opt);
    ping_2_pub = this->create_publisher<std_msgs::msg::UInt32>("/ping_2", default_qos);
    pong_3_sub = this->create_subscription<std_msgs::msg::UInt32>("/pong_3", default_qos, std::bind(&Ping::onPong3Callback, this, _1),pong_3_sub_opt);
    ping_3_pub = this->create_publisher<std_msgs::msg::UInt32>("/ping_3", default_qos);

    ping_1_send = 0;
    pong_1_recived = 0;
    latency_average_1 = 0;
    std_deviation_1 = 0;
    ping_2_send = 0;
    pong_2_recived = 0;
    latency_average_2 = 0;
    std_deviation_2 = 0;
    ping_3_send = 0;
    pong_3_recived = 0;
    latency_average_3 = 0;
    std_deviation_3 = 0;
}

Ping::~Ping(){
    RCLCPP_INFO(this->get_logger(), "Shutting down Node");
    }

void Ping::onTimerPing(){
    std_msgs::msg::UInt32 msg;
    msg.data = static_cast<uint32_t>(send_recive_data_1.size());

    send_recive_data_1.push_back(std::make_pair(now(), now()));
    send_recive_data_2.push_back(std::make_pair(now(), now()));
    send_recive_data_3.push_back(std::make_pair(now(), now()));

    if(ping_1_send<1000){
        ping_1_pub->publish(msg);
        ping_2_pub->publish(msg);
        ping_3_pub->publish(msg);
        ping_1_send++;
        ping_2_send++;
        ping_3_send++;
    }
    else
        rclcpp::shutdown();
}

void Ping::onPong1Callback(const std_msgs::msg::UInt32::SharedPtr msg){
    send_recive_data_1.at(msg->data).second = now();
    pong_1_recived++;
}

void Ping::onPong2Callback(const std_msgs::msg::UInt32::SharedPtr msg){
    send_recive_data_2.at(msg->data).second = now();
    pong_2_recived++;
}

void Ping::onPong3Callback(const std_msgs::msg::UInt32::SharedPtr msg){
    send_recive_data_3.at(msg->data).second = now();
    pong_3_recived++;
}

void Ping::parse_data(){

    // Ping Pong Topic 1
    for(auto &sample : send_recive_data_1){
        if(sample.second.nanoseconds() > sample.first.nanoseconds()){
            latency_1.push_back((sample.second.nanoseconds()-sample.first.nanoseconds()));
            latency_average_1 += latency_1.at(latency_1.size()-1);
        }
    }

    latency_average_1/=latency_1.size();

    for(auto &lat:latency_1){
        std_deviation_1 += lat-latency_average_1;
    }

    std_deviation_1 = sqrt(std_deviation_1/latency_1.size()); 

    topic_1_loss = abs(pong_1_recived-ping_1_send);

    for(auto &sample : send_recive_data_2){
        if(sample.second.nanoseconds() > sample.first.nanoseconds()){
            latency_2.push_back((sample.second.nanoseconds()-sample.first.nanoseconds()));
            latency_average_2 += latency_2.at(latency_2.size()-1);
        }
    }

    latency_average_2/=latency_2.size();

    // Ping Pong Topic 2
    for(auto &lat:latency_2){
        std_deviation_2+= lat-latency_average_2;
    }

    std_deviation_2 = sqrt(std_deviation_2/latency_2.size()); 

    topic_2_loss = abs(pong_2_recived-ping_2_send);

    // Ping Pong Topic 3
    for(auto &sample : send_recive_data_3){
        if(sample.second.nanoseconds() > sample.first.nanoseconds()){
            latency_3.push_back((sample.second.nanoseconds()-sample.first.nanoseconds()));
            latency_average_3 += latency_3.at(latency_3.size()-1);
        }
    }

    latency_average_3/=latency_3.size();

    for(auto &lat:latency_3){
        std_deviation_3+= lat-latency_average_3;
    }

    std_deviation_3 = sqrt(std_deviation_3/latency_3.size()); 

    topic_3_loss = abs(pong_3_recived-ping_3_send);
}


void Ping::store_data(){

    std::ofstream data_file;

    // Ping Pong Topic 1
    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_data_1.txt");

    for(auto &sample : send_recive_data_1){
        data_file << sample.first.nanoseconds() << "\t" << sample.second.nanoseconds() << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_latency_1.txt");

    for(auto &sample : latency_1){
        data_file << sample << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_results_1.txt");

    data_file << "Latency Average: " << latency_average_1 << std::endl << std::endl 
              << "Latency Standard Deviation: " << std_deviation_1 << std::endl << std::endl 
              << "Topic loss: " << topic_1_loss << std::endl << std::endl 
              << "Ping send: " << ping_1_send << std::endl << std::endl 
              << "Pong recived: " << pong_1_recived << std::endl << std::endl;
    
    data_file.close();
    
    // Ping Pong Topic 2
    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_data_2.txt");

    for(auto &sample : send_recive_data_2){
        data_file << sample.first.nanoseconds() << "\t" << sample.second.nanoseconds() << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_latency_2.txt");

    for(auto &sample : latency_2){
        data_file << sample << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_results_2.txt");
    data_file << "Latency Average: " << latency_average_2 << std::endl << std::endl 
              << "Latency Standard Deviation: " << std_deviation_2 << std::endl << std::endl 
              << "Topic loss: " << topic_2_loss << std::endl << std::endl 
              << "Ping send: " << ping_2_send << std::endl << std::endl 
              << "Pong recived: " << pong_2_recived << std::endl << std::endl;
    
    data_file.close();
    
    // Ping Pong Topic 3
    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_data_3.txt");

    for(auto &sample : send_recive_data_3){
        data_file << sample.first.nanoseconds() << "\t" << sample.second.nanoseconds() << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_latency_3.txt");

    for(auto &sample : latency_3){
        data_file << sample << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/multi_3_topic/pingpong_results_3.txt");
    data_file << "Latency Average: " << latency_average_3 << std::endl << std::endl 
              << "Latency Standard Deviation: " << std_deviation_3 << std::endl << std::endl 
              << "Topic loss: " << topic_3_loss << std::endl << std::endl 
              << "Ping send: " << ping_3_send << std::endl << std::endl 
              << "Pong recived: " << pong_3_recived << std::endl << std::endl;
    
    data_file.close();
}