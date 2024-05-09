#!~/.pyenv/shims/python
import rospy
from learning_topic.msg import Person

def personInfoCallback(msg):
    rospy.loginfo("Subcribe Person Info: name:%s age:%d sex:%d",msg.name, msg.age,msg.sex)

def person_subscriber():
# ROS 节点初始化
    rospy.init_node('person_subscriber', anonymous=True)
#创建一个Subscriber，订阅名为/person_info 的topic，注册回调函数 personInfoCallback
    rospy.Subscriber("/person_info", Person, personInfoCallback)
# 循环等待回调函数 
    rospy.spin()
if  __name__== '__main__':
    person_subscriber()