#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int16
from geometry_msgs.msg import Twist

def callback(twist_msg):
    motor_msg = Int16()
    if twist_msg.linear.x > 0:
        motor_msg.data = 1
    elif twist_msg.linear.x < 0:
        motor_msg.data = -1
    else:
        motor_msg.data = 0
    motor_pub.publish(motor_msg)

rospy.init_node('teleop_bridge')
motor_pub = rospy.Publisher('/motor_cmd', Int16, queue_size=1)
twist_sub = rospy.Subscriber('/cmd_vel', Twist, callback)
rospy.spin()
