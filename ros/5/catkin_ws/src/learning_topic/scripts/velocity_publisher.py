#!/home/wangxv/.pyenv/shims/python
import rospy
from geometry_msgs.msg import Twist
def velocity_publisher():
#ROS 节点初始化
    rospy.init_node('velocity_publisher', anonymous=True)
# 创建一个Publisher，发布名为/turtle1/cmd_vel的topic，消息类型为 geometry_msgs::Twist,队列长度10
    turtle_vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
#设置循环的频率 
    rate =rospy.Rate(10)
    while not rospy.is_shutdown():
#初始化 geometry_msgs::Twist类型的消息变量vel_msg 
        vel_msg = Twist() 
        vel_msg.linear.x=0.5 
        vel_msg.angular.z =0.2
# 发布消息
        turtle_vel_pub.publish(vel_msg)
        rospy.loginfo("Publsh turtle velocity command[%0.2fm/s, %0.2frad/s]",
        vel_msg.linear.x, vel_msg.angular.z)
# 按照循环频率延时 
        rate.sleep()
if __name__ == '__main__':
    try:
        velocity_publisher()
    except rospy.ROSInterruptException:
        pass