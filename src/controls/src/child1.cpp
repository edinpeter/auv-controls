#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int32.h"

#include <sstream>
#include <iostream>

using namespace std;

const int killCount = 100;
/**
Class harambe represents the father node, which gives directions to everything
**/
class westernLowland{
  bool alive;
public:
  westernLowland();
  bool isAlive();
  void shoot();
};
westernLowland::westernLowland(){
  alive = true;
}
bool westernLowland::isAlive(){
  return alive;
}
void westernLowland::shoot(){
  alive = false;
  cout << "RIP Harambe" << endl;
}

//starts without control

bool hasControl = false;


void controllerCallback(const std_msgs::String::ConstPtr& msg)
{

  string info = "pussY";

  ROS_INFO("Mondika heard: [%s]", msg->data.c_str());

  if(info.compare("control-mondika") == 0){
    hasControl = true;
  }
}


int main(int argc, char **argv)
{
  westernLowland mondika;

  ros::init(argc, argv, "mondika");

  ros::NodeHandle n;
   
  ros::Subscriber sub = n.subscribe("controller", 1000, controllerCallback);
  ros::Publisher status = n.advertise<std_msgs::String>("status", 1000);

  ros::Rate loop_rate(10);

  int count = 0;

  while (ros::ok())
  {
    
    ros::spinOnce();
    while(hasControl){
      //mission task code goes here
      string arb = "mondika has control" + count;
      std_msgs::String msg;
      msg.data = arb;
      status.publish(msg);

    }
    loop_rate.sleep();
    ++count;
    if(count == killCount) mondika.shoot();
  }


  return 0;
}