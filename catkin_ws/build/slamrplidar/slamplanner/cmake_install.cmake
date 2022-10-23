# Install script for directory: /home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/user/real_a1/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_planner/msg" TYPE FILE FILES
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
    "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_planner/cmake" TYPE FILE FILES "/home/user/real_a1/catkin_ws/build/slamrplidar/slamplanner/catkin_generated/installspace/slam_planner-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/user/real_a1/catkin_ws/devel/include/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/user/real_a1/catkin_ws/devel/share/roseus/ros/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/user/real_a1/catkin_ws/devel/share/common-lisp/ros/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/user/real_a1/catkin_ws/devel/share/gennodejs/ros/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/user/real_a1/catkin_ws/devel/lib/python3/dist-packages/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/user/real_a1/catkin_ws/devel/lib/python3/dist-packages/slam_planner")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/user/real_a1/catkin_ws/build/slamrplidar/slamplanner/catkin_generated/installspace/slam_planner.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_planner/cmake" TYPE FILE FILES "/home/user/real_a1/catkin_ws/build/slamrplidar/slamplanner/catkin_generated/installspace/slam_planner-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_planner/cmake" TYPE FILE FILES
    "/home/user/real_a1/catkin_ws/build/slamrplidar/slamplanner/catkin_generated/installspace/slam_plannerConfig.cmake"
    "/home/user/real_a1/catkin_ws/build/slamrplidar/slamplanner/catkin_generated/installspace/slam_plannerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_planner" TYPE FILE FILES "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/package.xml")
endif()

