
#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/u_int32.hpp"

class PongTest : public rclcpp::Node{

    public:

        PongTest() : Node("pong_test"){

            using std::placeholders::_1;  

            auto default_qos = rclcpp::QoS(rclcpp::ParametersQoS());

            default_qos.reliable();
            
            pong_pub = this->create_publisher<std_msgs::msg::UInt32>("/pong", default_qos);
            ping_sub = this->create_subscription<std_msgs::msg::UInt32>("/ping", default_qos, std::bind(&PongTest::onPingCallback, this, _1));

   }

    ~PongTest(){
        RCLCPP_INFO(this->get_logger(), "Shutting down Node");
    }

    private:

        void onPingCallback(const std_msgs::msg::UInt32::SharedPtr msg){
            pong_pub->publish(*msg);
        }

        rclcpp::Publisher<std_msgs::msg::UInt32>::SharedPtr pong_pub;
        rclcpp::Subscription<std_msgs::msg::UInt32>::SharedPtr ping_sub;

};

int main(int argc, char * argv[]){
    rclcpp::init(argc, argv);

    rclcpp::executors::SingleThreadedExecutor st_executor;

    auto pong_test = std::make_shared<PongTest>();
    st_executor.add_node(pong_test);

    st_executor.spin();

    rclcpp::shutdown();
}