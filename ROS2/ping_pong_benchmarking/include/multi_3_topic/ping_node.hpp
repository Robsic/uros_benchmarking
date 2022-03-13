
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

        rclcpp::CallbackGroup::SharedPtr callback_group_pong_1;
        rclcpp::CallbackGroup::SharedPtr callback_group_pong_2;
        rclcpp::CallbackGroup::SharedPtr callback_group_pong_3;

        rclcpp::TimerBase::SharedPtr timer_;

        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr pong_1_sub;
        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr ping_1_pub;

        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr pong_2_sub;
        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr ping_2_pub;

        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr pong_3_sub;
        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr ping_3_pub;

        std::chrono::nanoseconds ping_period;

        int ping_1_send;
        int pong_1_recived;
        int topic_1_loss;

        int ping_2_send;
        int pong_2_recived;
        int topic_2_loss;

        int ping_3_send;
        int pong_3_recived;
        int topic_3_loss;

        std::vector<ptt> send_recive_data_1;
        std::vector <double> latency_1;
        double latency_average_1;
        double std_deviation_1;

        std::vector<ptt> send_recive_data_2;
        std::vector <double> latency_2;
        double latency_average_2;
        double std_deviation_2;

        std::vector<ptt> send_recive_data_3;
        std::vector <double> latency_3;
        double latency_average_3;
        double std_deviation_3;

        void onPong1Callback(const std_msgs::msg::UInt32::SharedPtr msg);
        void onPong2Callback(const std_msgs::msg::UInt32::SharedPtr msg);
        void onPong3Callback(const std_msgs::msg::UInt32::SharedPtr msg);
        void onTimerPing();
};