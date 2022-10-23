cmake_minimum_required(VERSION 2.8.3)
project(improved_local_planner)

# Set to Release in order to speed up the program significantly
set(CMAKE_BUILD_TYPE Release) #None, Debug, Release, RelWithDebInfo, MinSizeRel

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
    base_local_planner
    costmap_2d
    costmap_converter
    cmake_modules
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    message_generation
    nav_core
    nav_msgs
    mbf_costmap_core
    mbf_msgs
    roscpp
    std_msgs
    pluginlib
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
)
message(STATUS "System: ${CMAKE_SYSTEM}")
## System dependencies are found with CMake's conventions
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake_modules)
message(STATUS "${CMAKE_MODULE_PATH}")
find_package(Boost REQUIRED COMPONENTS system thread graph)
find_package(SUITESPARSE REQUIRED)
find_package(G2O REQUIRED)

# Eigen3
if (EXISTS "FindEigen3.cmake")
  find_package(Eigen3 REQUIRED)
  set(Eigen_INCLUDE_DIRS ${Eigen3_INCLUDE_DIRS})
elseif (EXISTS "FindEigen.cmake")
  find_package(Eigen REQUIRED)
elseif (EXISTS "FindEigen.cmake")
  message(WARNING "No findEigen cmake script found. You must provde one of them,
  e.g. by adding it to ${PROJECT_SOURCE_DIR}/cmake_modules.")
endif (EXISTS "FindEigen3.cmake")

set(EXTERNAL_INCLUDE_DIRS ${Eigen_INCLUDE_DIRS} ${SUITESPARSE_INCLUDE_DIRS} ${G2O_INCLUDE_DIR})
set(EXTERNAL_LIBS ${SUITESPARSE_LIBRARIES} ${G2O_LIBRARIES})

IF(NOT MSVC)
  include(CheckCXXCompilerFlag)
  CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
  CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
  message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support which is required 
  by linked third party packages starting from ROS Jade. Ignore this message for ROS Indigo.")
endif()
endif()

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  TrajectoryPointMsg.msg
  TrajectoryMsg.msg
  FeedbackMsg.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   geometry_msgs std_msgs costmap_converter
)


generate_dynamic_reconfigure_options(
  cfg/DBLocalPlannerReconfigure.cfg
)

catkin_package(
  INCLUDE_DIRS include ${EXTERNAL_INCLUDE_DIRS}
  LIBRARIES improved_local_planner ${EXTERNAL_LIBS}
  CATKIN_DEPENDS
	base_local_planner
	costmap_2d
	costmap_converter
	dynamic_reconfigure
	geometry_msgs
	interactive_markers
	message_runtime
	nav_core
	nav_msgs
	pluginlib
	roscpp
	std_msgs
  tf2
  tf2_ros
	visualization_msgs
  DEPENDS SUITESPARSE G2O
)

include_directories(include)
include_directories(
  SYSTEM
  ${EXTERNAL_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)
include_directories(include/improved_local_planner)

## Build library

add_library(improved_local_planner
   src/timed_elastic_band.cpp
   src/optimal_planner.cpp
   src/obstacles.cpp
   src/visualization.cpp
   src/recovery_behaviors.cpp
   src/DBconfig.cpp
   src/homotopy_class_planner.cpp
   src/DBlocal_planner_ros.cpp
   src/graph_search.cpp
)

# Dynamic reconfigure
add_dependencies(improved_local_planner ${PROJECT_NAME}_gencfg)

# Generate messages 
add_dependencies(improved_local_planner ${PROJECT_NAME}_generate_messages_cpp)

target_link_libraries(improved_local_planner
   ${EXTERNAL_LIBS}
   ${catkin_LIBRARIES}
)


install(FILES
  improved_local_planner_plugin.xml
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
