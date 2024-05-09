#include <ros/ros.h>
#include "learning_topic/Person.h"
// 接收到订阅的消息后，会进入消息回调函数
void personinfoCallback(const learning_topic::Person::ConstPtr &msg)
{
    // 将接收到的消息打印出来
    ROS_INFO("Subcribe Person Info: name:%s age:%dsex:%d",
             msg->name.c_str(), msg->age, msg->sex);
}
int main(int argc, char **argv)
{
    // 初始化 ROS 节点
    ros::init(argc, argv, "person_subscriber");
    // 创建节点句柄
    ros::NodeHandle n;
    // 创建一个Subscriber，订阅名为/person_info的topic，注册回调函数personinfoCallback
    ros::Subscriber person_info_sub = n.subscribe("/person_info", 10, personinfoCallback);
// 循环等待回调函数
    ros::spin();
    return 0;
}