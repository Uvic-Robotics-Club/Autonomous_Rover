#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/UInt16.h>

ros::Publisher arduino_pub;

void lidarCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    // Assuming the Lidar data is published as ranges in the LaserScan message

    // Find the minimum range value
    float minRange = std::numeric_limits<float>::max();
    for (const float range : scan->ranges)
    {
        if (range < minRange)
        {
            minRange = range;
        }
    }

    // Convert the minimum range value to an integer
    uint16_t distance = static_cast<uint16_t>(minRange * 1000); // Scaling factor of 1000 for millimeters

    // Create a message to send the distance data to Arduino
    std_msgs::UInt16 arduinoMsg;
    arduinoMsg.data = distance;

    // Publish the distance data to Arduino
    arduino_pub.publish(arduinoMsg);
}

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "lidar_node");
    ros::NodeHandle nh;

    // Create a publisher to send data to Arduino
    arduino_pub = nh.advertise<std_msgs::UInt16>("lidar_distance", 1);

    // Create a subscriber to receive Lidar data
    ros::Subscriber lidar_sub = nh.subscribe<sensor_msgs::LaserScan>("lidar_scan", 1, lidarCallback);

    // Spin the ROS event loop
    ros::spin();

    return 0;
}

