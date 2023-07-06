#include <ros/ros.h>
#include <std_msgs/UInt16.h>
#include <ros_serial_arduino/ard.h>

ros::NodeHandle nh;
ros::Publisher arduino_pub;

void distanceCallback(const std_msgs::UInt16& msg)
{
    int distance = msg.data;
    // Process the distance data received from Arduino as needed
}

void setup()
{
    nh.initNode();
    arduino_pub = nh.advertise<std_msgs::UInt16>("lidar_distance", 1);

    nh.subscribe("lidar_distance", &distanceCallback);
}

void loop()
{
    nh.spinOnce();

    // Add any additional logic or processing as needed

    delay(10);
}

int main(int argc, char **argv)
{
    setup();

    while (ros::ok())
    {
        loop();
    }

    return 0;
}

