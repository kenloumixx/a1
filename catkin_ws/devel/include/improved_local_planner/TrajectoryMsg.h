// Generated by gencpp from file improved_local_planner/TrajectoryMsg.msg
// DO NOT EDIT!


#ifndef IMPROVED_LOCAL_PLANNER_MESSAGE_TRAJECTORYMSG_H
#define IMPROVED_LOCAL_PLANNER_MESSAGE_TRAJECTORYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <improved_local_planner/TrajectoryPointMsg.h>

namespace improved_local_planner
{
template <class ContainerAllocator>
struct TrajectoryMsg_
{
  typedef TrajectoryMsg_<ContainerAllocator> Type;

  TrajectoryMsg_()
    : header()
    , trajectory()  {
    }
  TrajectoryMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::improved_local_planner::TrajectoryPointMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::improved_local_planner::TrajectoryPointMsg_<ContainerAllocator> >::other >  _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryMsg_

typedef ::improved_local_planner::TrajectoryMsg_<std::allocator<void> > TrajectoryMsg;

typedef boost::shared_ptr< ::improved_local_planner::TrajectoryMsg > TrajectoryMsgPtr;
typedef boost::shared_ptr< ::improved_local_planner::TrajectoryMsg const> TrajectoryMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator1> & lhs, const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator1> & lhs, const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace improved_local_planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9dfdc1e62b3eb03a32af2423c5b7a0dd";
  }

  static const char* value(const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9dfdc1e62b3eb03aULL;
  static const uint64_t static_value2 = 0x32af2423c5b7a0ddULL;
};

template<class ContainerAllocator>
struct DataType< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "improved_local_planner/TrajectoryMsg";
  }

  static const char* value(const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message that contains a trajectory for mobile robot navigation\n"
"\n"
"std_msgs/Header header\n"
"improved_local_planner/TrajectoryPointMsg[] trajectory\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: improved_local_planner/TrajectoryPointMsg\n"
"# Message that contains single point on a trajectory suited for mobile navigation.\n"
"# The trajectory is described by a sequence of poses, velocities,\n"
"# accelerations and temporal information.\n"
"\n"
"# Why this message type?\n"
"# nav_msgs/Path describes only a path without temporal information.\n"
"# trajectory_msgs package contains only messages for joint trajectories.\n"
"\n"
"# The pose of the robot\n"
"geometry_msgs/Pose pose\n"
"\n"
"# Corresponding velocity\n"
"geometry_msgs/Twist velocity\n"
"\n"
"# Corresponding acceleration\n"
"geometry_msgs/Twist acceleration\n"
"\n"
"duration time_from_start\n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::improved_local_planner::TrajectoryMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::improved_local_planner::TrajectoryMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::improved_local_planner::TrajectoryPointMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMPROVED_LOCAL_PLANNER_MESSAGE_TRAJECTORYMSG_H
