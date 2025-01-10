#include "rclcpp/rclcpp.hpp"

class TNode : public rclcpp::Node
{
public:
  TNode() : Node("tnode")
  {
    RCLCPP_INFO(get_logger(), "Hello, world!");
  }
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<TNode>());
  rclcpp::shutdown();
  return 0;
}