
#include <thread>         // std::this_thread::sleep_for
#include <chrono>         // std::chrono::seconds

#include "rclcpp/executor.hpp"
#include "rclcpp/rclcpp.hpp"

#include "single_1_topic/ping_node.hpp"

using namespace std::chrono_literals;

int main(int argc, char * argv[]){
    rclcpp::init(argc, argv);

    rclcpp::executors::SingleThreadedExecutor st_executor;

    const std::chrono::seconds experiment_time = 4s;

    auto ping = std::make_shared<Ping>();
    st_executor.add_node(ping);

    auto thread_ = std::thread(
    [&]() {
        st_executor.spin();
    });


    std::this_thread::sleep_for(experiment_time);

    rclcpp::shutdown();

    ping->parse_data();
    ping->store_data();

}