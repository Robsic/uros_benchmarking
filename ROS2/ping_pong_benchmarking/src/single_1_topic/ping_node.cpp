
#include "single_1_topic/ping_node.hpp"
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/u_int32.hpp"

#include <algorithm>
#include <functional>
#include <memory>
#include <vector>
#include <fstream>
#include <utility> 



Ping::Ping() : rclcpp::Node("ping"){

    using std::placeholders::_1;   

    using namespace std::chrono_literals;

    auto default_qos = rclcpp::QoS(rclcpp::SystemDefaultsQoS());

    ping_period = 10000000ns;

    timer_ = this->create_wall_timer(ping_period, std::bind(&Ping::onTimerPing, this));
    pong_sub = this->create_subscription<std_msgs::msg::UInt32>("/pong", default_qos, std::bind(&Ping::onPongCallback, this, _1));
    ping_pub = this->create_publisher<std_msgs::msg::UInt32>("/ping", default_qos);

    ping_send = 0;
    pong_recived = 0;
    latency_average = 0;
    std_deviation = 0;
}

Ping::~Ping(){
        RCLCPP_INFO(this->get_logger(), "Shutting down Node");
    }

void Ping::onTimerPing(){
    std_msgs::msg::UInt32 msg;
    msg.data = static_cast<uint32_t>(send_recive_data.size());

    send_recive_data.push_back(std::make_pair(now(), now()));

    ping_pub->publish(msg);
    ping_send++;
}

void Ping::onPongCallback(const std_msgs::msg::UInt32::SharedPtr msg){
    send_recive_data.at(msg->data).second = now();
    pong_recived++;
}

void Ping::parse_data(){

    for(auto &sample : send_recive_data){
        if(sample.second.nanoseconds() > sample.first.nanoseconds()){
            latency.push_back((sample.second.nanoseconds()-sample.first.nanoseconds()));
            latency_average += latency.at(latency.size()-1);
        }
    }

    latency_average/=latency.size();

    for(auto &lat:latency){
        std_deviation += lat-latency_average;
    }

    std_deviation = sqrt(std_deviation/latency.size()); 

    topic_loss = abs(pong_recived-ping_send);
}


void Ping::store_data(){

    std::ofstream data_file;
    data_file.open("./ping_pong_benchmarking/data/single_1_topic/pingpong_data.txt");

    for(auto &sample : send_recive_data){
        data_file << sample.first.nanoseconds() << "\t" << sample.second.nanoseconds() << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/single_1_topic/pingpong_latency.txt");

    for(auto &sample : latency){
        data_file << sample << std::endl;
    }
    
    data_file.close();

    data_file.open("./ping_pong_benchmarking/data/single_1_topic/pingpong_results.txt");

    data_file << "Latency Average: " << latency_average << std::endl << std::endl 
              << "Latency Standard Deviation: " << std_deviation << std::endl << std::endl 
              << "Topic loss: " << topic_loss << std::endl << std::endl 
              << "Ping send: " << ping_send << std::endl << std::endl 
              << "Pong recived: " << pong_recived << std::endl << std::endl;
    
    data_file.close();
}