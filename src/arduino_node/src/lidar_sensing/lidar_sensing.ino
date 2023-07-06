#include <Servo.h>
#include <ros.h>

int lidarData;

void setup() {
  pinMode(6,OUTPUT); //enA
  pinMode(5,OUTPUT); //INA
  pinMode(4,OUTPUT); // INB
  Serial.begin(9600);
}

void loop() {
  if (Serial.available() > 0) {
    lidarData = Serial.parseInt();  // Read the distance data from the Lidar sensor

    if (lidarData < 100) {  // If distance is less than 100mm (10 cm)
      digitalWrite(6,HIGH);
      digitalWrite(5,LOW);
      digitalWrite(4,HIGH);
      delay(1000);  // Delay for motor movement (adjust as needed)
    }else{
      digitalWrite(6,HIGH);
      digitalWrite(5,HIGH);
      digitalWrite(4,LOW);
    }
    }
  }
