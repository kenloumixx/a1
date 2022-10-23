# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "improved_local_planner: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iimproved_local_planner:/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Icostmap_converter:/opt/ros/noetic/share/costmap_converter/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(improved_local_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_custom_target(_improved_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "improved_local_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" "geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Twist:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_custom_target(_improved_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "improved_local_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" "geometry_msgs/Vector3:improved_local_planner/TrajectoryPointMsg:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_custom_target(_improved_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "improved_local_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" "geometry_msgs/Polygon:costmap_converter/ObstacleArrayMsg:geometry_msgs/Point32:geometry_msgs/Twist:geometry_msgs/Vector3:improved_local_planner/TrajectoryPointMsg:geometry_msgs/Point:geometry_msgs/Pose:costmap_converter/ObstacleMsg:improved_local_planner/TrajectoryMsg:geometry_msgs/TwistWithCovariance:std_msgs/Header:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner
)
_generate_msg_cpp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner
)
_generate_msg_cpp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(improved_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(improved_local_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(improved_local_planner_generate_messages improved_local_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_cpp _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_cpp _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_cpp _improved_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(improved_local_planner_gencpp)
add_dependencies(improved_local_planner_gencpp improved_local_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS improved_local_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner
)
_generate_msg_eus(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner
)
_generate_msg_eus(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner
)

### Generating Services

### Generating Module File
_generate_module_eus(improved_local_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(improved_local_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(improved_local_planner_generate_messages improved_local_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_eus _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_eus _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_eus _improved_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(improved_local_planner_geneus)
add_dependencies(improved_local_planner_geneus improved_local_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS improved_local_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner
)
_generate_msg_lisp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner
)
_generate_msg_lisp(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(improved_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(improved_local_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(improved_local_planner_generate_messages improved_local_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_lisp _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_lisp _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_lisp _improved_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(improved_local_planner_genlisp)
add_dependencies(improved_local_planner_genlisp improved_local_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS improved_local_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner
)
_generate_msg_nodejs(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner
)
_generate_msg_nodejs(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(improved_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(improved_local_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(improved_local_planner_generate_messages improved_local_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_nodejs _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_nodejs _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_nodejs _improved_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(improved_local_planner_gennodejs)
add_dependencies(improved_local_planner_gennodejs improved_local_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS improved_local_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner
)
_generate_msg_py(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner
)
_generate_msg_py(improved_local_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner
)

### Generating Services

### Generating Module File
_generate_module_py(improved_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(improved_local_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(improved_local_planner_generate_messages improved_local_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_py _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_py _improved_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/improved_local_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(improved_local_planner_generate_messages_py _improved_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(improved_local_planner_genpy)
add_dependencies(improved_local_planner_genpy improved_local_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS improved_local_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/improved_local_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(improved_local_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(improved_local_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET costmap_converter_generate_messages_cpp)
  add_dependencies(improved_local_planner_generate_messages_cpp costmap_converter_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/improved_local_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(improved_local_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(improved_local_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET costmap_converter_generate_messages_eus)
  add_dependencies(improved_local_planner_generate_messages_eus costmap_converter_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/improved_local_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(improved_local_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(improved_local_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET costmap_converter_generate_messages_lisp)
  add_dependencies(improved_local_planner_generate_messages_lisp costmap_converter_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/improved_local_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(improved_local_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(improved_local_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET costmap_converter_generate_messages_nodejs)
  add_dependencies(improved_local_planner_generate_messages_nodejs costmap_converter_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/improved_local_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(improved_local_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(improved_local_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET costmap_converter_generate_messages_py)
  add_dependencies(improved_local_planner_generate_messages_py costmap_converter_generate_messages_py)
endif()