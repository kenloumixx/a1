# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "slam_planner: 9 messages, 0 services")

set(MSG_I_FLAGS "-Islam_planner:/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(slam_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" ""
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" "slam_planner/LED"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" "slam_planner/Cartesian:slam_planner/IMU"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" ""
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" ""
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" "slam_planner/MotorCmd:slam_planner/LED:slam_planner/Cartesian"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" "slam_planner/Cartesian:slam_planner/IMU:slam_planner/MotorState"
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" ""
)

get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_custom_target(_slam_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_planner" "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)
_generate_msg_cpp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(slam_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(slam_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(slam_planner_generate_messages slam_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_cpp _slam_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_planner_gencpp)
add_dependencies(slam_planner_gencpp slam_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)
_generate_msg_eus(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
)

### Generating Services

### Generating Module File
_generate_module_eus(slam_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(slam_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(slam_planner_generate_messages slam_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_eus _slam_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_planner_geneus)
add_dependencies(slam_planner_geneus slam_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)
_generate_msg_lisp(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(slam_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(slam_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(slam_planner_generate_messages slam_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_lisp _slam_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_planner_genlisp)
add_dependencies(slam_planner_genlisp slam_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)
_generate_msg_nodejs(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(slam_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(slam_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(slam_planner_generate_messages slam_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_nodejs _slam_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_planner_gennodejs)
add_dependencies(slam_planner_gennodejs slam_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg"
  "${MSG_I_FLAGS}"
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg;/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)
_generate_msg_py(slam_planner
  "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
)

### Generating Services

### Generating Module File
_generate_module_py(slam_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(slam_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(slam_planner_generate_messages slam_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/Cartesian.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/HighState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/IMU.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LED.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/LowState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorCmd.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/real_a1/catkin_ws/src/slamrplidar/slamplanner/msg/MotorState.msg" NAME_WE)
add_dependencies(slam_planner_generate_messages_py _slam_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_planner_genpy)
add_dependencies(slam_planner_genpy slam_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(slam_planner_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(slam_planner_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(slam_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(slam_planner_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(slam_planner_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(slam_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(slam_planner_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(slam_planner_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(slam_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(slam_planner_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(slam_planner_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(slam_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(slam_planner_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(slam_planner_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(slam_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
