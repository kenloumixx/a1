// Generated by gencpp from file slam_planner/Cartesian.msg
// DO NOT EDIT!


#ifndef SLAM_PLANNER_MESSAGE_CARTESIAN_H
#define SLAM_PLANNER_MESSAGE_CARTESIAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace slam_planner
{
template <class ContainerAllocator>
struct Cartesian_
{
  typedef Cartesian_<ContainerAllocator> Type;

  Cartesian_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  Cartesian_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::slam_planner::Cartesian_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slam_planner::Cartesian_<ContainerAllocator> const> ConstPtr;

}; // struct Cartesian_

typedef ::slam_planner::Cartesian_<std::allocator<void> > Cartesian;

typedef boost::shared_ptr< ::slam_planner::Cartesian > CartesianPtr;
typedef boost::shared_ptr< ::slam_planner::Cartesian const> CartesianConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slam_planner::Cartesian_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slam_planner::Cartesian_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slam_planner::Cartesian_<ContainerAllocator1> & lhs, const ::slam_planner::Cartesian_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slam_planner::Cartesian_<ContainerAllocator1> & lhs, const ::slam_planner::Cartesian_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slam_planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slam_planner::Cartesian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slam_planner::Cartesian_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_planner::Cartesian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_planner::Cartesian_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_planner::Cartesian_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_planner::Cartesian_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slam_planner::Cartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc153912f1453b708d221682bc23d9ac";
  }

  static const char* value(const ::slam_planner::Cartesian_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc153912f1453b70ULL;
  static const uint64_t static_value2 = 0x8d221682bc23d9acULL;
};

template<class ContainerAllocator>
struct DataType< ::slam_planner::Cartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slam_planner/Cartesian";
  }

  static const char* value(const ::slam_planner::Cartesian_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slam_planner::Cartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::slam_planner::Cartesian_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slam_planner::Cartesian_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cartesian_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slam_planner::Cartesian_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slam_planner::Cartesian_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAM_PLANNER_MESSAGE_CARTESIAN_H
