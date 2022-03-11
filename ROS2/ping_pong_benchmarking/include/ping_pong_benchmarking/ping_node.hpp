
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/int32.hpp"

#include <chrono>
#include <memory>
#include <string>
#include <utility>
#include <vector>

typedef pair<rclcpp::Time, rclcpp::Time> ptt;

class Ping : public rclcpp::Node{

    public:
        Ping();
        ~Ping();

    private:

    rclcpp::TimerBase::SharedPtr timer_;
    rclcpp::Subscription<std::msg::Int16>::SharedPtr pong_sub;
    rclcpp::Publisher<std::msg::Int16>::SharedPtr ping_pub;

    int ping_send;
    int pong_recived;

    std::vector<ptt> send_recive_data;
    std::vector <double> latency;
    double latency_average;

    void onPongCallback(const std_msg::msg::Int16::SharedPtr msg);
    void onTimerPing();
    void parse_data();
    void store_data();

};