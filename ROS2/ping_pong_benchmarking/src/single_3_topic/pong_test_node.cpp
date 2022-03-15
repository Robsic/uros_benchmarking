
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/u_int32.hpp"

class PongTest : public rclcpp::Node{

    public:

        PongTest() : Node("pong_test"){

            using std::placeholders::_1;  
            auto default_qos = rclcpp::QoS(rclcpp::ParametersQoS());
            pong_1_pub = this->create_publisher<std_msgs::msg::UInt32>("/pong_1", default_qos);
            ping_1_sub = this->create_subscription<std_msgs::msg::UInt32>("/ping_1", default_qos, std::bind(&PongTest::onPing1Callback, this, _1));
            pong_2_pub = this->create_publisher<std_msgs::msg::UInt32>("/pong_2", default_qos);
            ping_2_sub = this->create_subscription<std_msgs::msg::UInt32>("/ping_2", default_qos, std::bind(&PongTest::onPing2Callback, this, _1));
            pong_3_pub = this->create_publisher<std_msgs::msg::UInt32>("/pong_3", default_qos);
            ping_3_sub = this->create_subscription<std_msgs::msg::UInt32>("/ping_3", default_qos, std::bind(&PongTest::onPing3Callback, this, _1));

   }

    ~PongTest(){
        RCLCPP_INFO(this->get_logger(), "Shutting down Node");
    }

    private:

        void onPing1Callback(const std_msgs::msg::UInt32::SharedPtr msg){
            pong_1_pub->publish(*msg);
        }

        void onPing2Callback(const std_msgs::msg::UInt32::SharedPtr msg){
            pong_2_pub->publish(*msg);
        }

        void onPing3Callback(const std_msgs::msg::UInt32::SharedPtr msg){
            pong_3_pub->publish(*msg);
        }

        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr pong_1_pub;
        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr ping_1_sub;

        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr pong_2_pub;
        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr ping_2_sub;

        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr pong_3_pub;
        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr ping_3_sub;

};

int main(int argc, char * argv[]){
    rclcpp::init(argc, argv);

    rclcpp::executors::SingleThreadedExecutor st_executor;

    auto pong_test = std::make_shared<PongTest>();
    st_executor.add_node(pong_test);

    st_executor.spin();

    rclcpp::shutdown();
}