
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/u_int32.hpp"

#include <chrono>
#include <memory>
#include <string>
#include <utility>
#include <vector>

typedef std::pair<rclcpp::Time, rclcpp::Time> ptt;

class Ping : public rclcpp::Node{

    public:
        Ping();
        ~Ping();

        void parse_data();
        void store_data();

    private:
        rclcpp::TimerBase::SharedPtr timer_;
        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr pong_sub;
        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr ping_pub;

        std::chrono::nanoseconds ping_period;
        int ping_send;
        int pong_recived;
        int topic_loss;

        std::vector<ptt> send_recive_data;
        std::vector <double> latency;
        double latency_average;
        double std_deviation;

        void onPongCallback(const std_msgs::msg::UInt32::SharedPtr msg);
        void onTimerPing();
};