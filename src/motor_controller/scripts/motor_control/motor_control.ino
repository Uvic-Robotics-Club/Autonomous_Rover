#include <ros.h>
#include <std_msgs/Int16.h>

#define IN1 8
#define IN2 9
#define enB 7

#define IN3 5
#define IN4 4 //b
#define enA 6 // enable

ros::NodeHandle nh;

void motorCb(const std_msgs::Int16& cmd_msg){
  if(cmd_msg.data == 1){
    // Motor moves forward
    digitalWrite(enB, HIGH);
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, LOW);

    digitalWrite(enA, HIGH);
    digitalWrite(IN3, HIGH);
    digitalWrite(IN4, LOW);
    
  } else if(cmd_msg.data == -1){
    // Motor moves in reverse
    digitalWrite(enB, HIGH);
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, HIGH);
    
    digitalWrite(enA, HIGH);
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, HIGH);
  } else {
    // Motor stops
    digitalWrite(enB, LOW);
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, LOW);

    digitalWrite(enA, LOW);
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, LOW);
  }
}

ros::Subscriber<std_msgs::Int16> sub("motor_cmd", motorCb);

void setup(){
  pinMode(IN1, OUTPUT); 
  pinMode(IN2, OUTPUT);
  pinMode(enB, OUTPUT);

  pinMode(IN3, OUTPUT); 
  pinMode(IN4, OUTPUT);
  pinMode(enA, OUTPUT);
  
  nh.initNode();
  nh.subscribe(sub);
}

void loop(){
  nh.spinOnce();
  delay(1);
}
