cmake_minimum_required(VERSION 2.8.3)
project(controls)

find_package(catkin REQUIRED)

find_package(catkin REQUIRED COMPONENTS
	roscpp
)

catkin_package()

add_executable(harambe src/master.cpp)
add_executable(mondika src/child1.cpp)

target_link_libraries(mondika
   ${catkin_LIBRARIES}
)

target_link_libraries(harambe
   ${catkin_LIBRARIES}
)