
#include "ping_pong_benchmarking/ping_node.hpp"

#include <algorithm>
#include <functional>
#include <memory>
#include <vector>
#include <fstream>

Ping::Ping() : rclcpp::Node("ping"){
    auto default_qos = rclcpp::QoS(rclcpp::SystemDefaultsQoS());

    timer_ = this->create_wall_timer(ping_period, std::bind(&Ping::onTimerPing, this));
    pong_sub = this->create_subscription<std_msgs::msg::Int16>("/pong", default_qos, std::bind(&Ping::onPongCallback, this, _1));
    ping_pub = this->create_publisher<std_msgs::msg::Int16>("/ping", default_qos);

    ping_send = 0;
    pong_recived = 0;
    latency_average = 0;
}

Ping::~Ping(){
        RCLCPP_INFO(this->get_logger(), "Shutting down Node");
    }

void Ping::onTimerPing(){
    std_msgs::msg::Int16 msg;
    msg.data = static_cast<int32_t>(send_recive_data.size());
    send_recive_data.push_back(make_pair(now(),{0,0}));
    ping_pub->publish(msg);
    ping_send++;
}

void Ping::onPongCallback(const std_msg::msg::Int16::SharedPtr msg){
    send_recive_data.at(msg).second = now();
    pong_recived++;
}

void Ping::parse_data(){

    // double high_rtt_jitter = calc_std_deviation(high_rtts) * 1000.0;

    for(auto &sample : send_recive_data){
        if(sample.second >= sample.first){
            latency.push_back((sample.second-sample.first)*1000);
            latency_average += latency.at(latency.size()-1);
        }
    }

    latency_average/=latency.size();

    int topic_loss = abs(pong_recived-ping_send);
}


void Ping::store_data(){
    ofstream data_file;
    data_file.open("pingpong_data.txt");
    int i = 0;
    for(auto &sample : send_recive_data){
        std::cout << sample.first << "\t" << sample.second << "\t" << latency.at(i) << std::endl;
        i++;
    }
    data_file.close();
}