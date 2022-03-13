
#include <thread>         // std::this_thread::sleep_for
#include <chrono>         // std::chrono::seconds

#include "rclcpp/executor.hpp"
#include "rclcpp/rclcpp.hpp"

#include "multi_3_topic/ping_node.hpp"

using namespace std::chrono_literals;

int main(int argc, char * argv[]){
    rclcpp::init(argc, argv);

    rclcpp::executors::MultiThreadedExecutor mt_executor;

    auto ping = std::make_shared<Ping>();
    mt_executor.add_node(ping);
    
    mt_executor.spin();

    rclcpp::shutdown();

    ping->parse_data();
    ping->store_data();

}