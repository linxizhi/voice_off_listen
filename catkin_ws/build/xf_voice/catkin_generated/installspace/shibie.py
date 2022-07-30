#! usr/bin/env python3



import rospy
from std_msgs.msg import String

def domsgs(msg):
    rospy.loginfo("yes")
if __name__=="__main__":
    rospy.init_node("chuancan")
    sub=rospy.Subscriber("trans",String,domsgs,queue_size=10)
    rospy.spin()