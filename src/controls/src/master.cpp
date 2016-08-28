#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int32.h"

#include <sstream>
#include <iostream>

using namespace std;

const int killCount = 1000;
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

//Always starts as true until a node is given control.
bool harambeHasControl = true;


void controllerCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}


int main(int argc, char **argv)
{
  westernLowland harambe;

  ros::init(argc, argv, "harambe");

  ROS_INFO("%i",harambe.isAlive());


  ros::NodeHandle n;
	
  ros::Publisher controller = n.advertise<std_msgs::String>("controller", 1000);
  ros::Publisher status = n.advertise<std_msgs::String>("status", 1000);

  ros::Subscriber sub = n.subscribe("controllerListener", 1000, controllerCallback);
  ros::Rate loop_rate(10);

  int count = 0;
  int state = 0;
  while (ros::ok() && harambe.isAlive())
  {
	 if(harambeHasControl){
		switch(state){
		  case 0: std_msgs::String msg;
					 std::stringstream ss;
					 ss << "harambe currently has control of the AUV" << count;
					 msg.data = ss.str();
					 status.publish(msg);

					 //passes control to mondika
					 msg.data = "control-mondika";
					 controller.publish(msg);
					 harambeHasControl = false;
					 state++;

					 break;
		}
	 }

	 ros::spinOnce();

	 loop_rate.sleep();
	 ++count;
	 if(count == killCount) harambe.shoot();
  }


  return 0;
}