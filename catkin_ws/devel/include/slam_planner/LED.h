// Generated by gencpp from file slam_planner/LED.msg
// DO NOT EDIT!


#ifndef SLAM_PLANNER_MESSAGE_LED_H
#define SLAM_PLANNER_MESSAGE_LED_H


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
struct LED_
{
  typedef LED_<ContainerAllocator> Type;

  LED_()
    : r(0)
    , g(0)
    , b(0)  {
    }
  LED_(const ContainerAllocator& _alloc)
    : r(0)
    , g(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef uint8_t _r_type;
  _r_type r;

   typedef uint8_t _g_type;
  _g_type g;

   typedef uint8_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::slam_planner::LED_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slam_planner::LED_<ContainerAllocator> const> ConstPtr;

}; // struct LED_

typedef ::slam_planner::LED_<std::allocator<void> > LED;

typedef boost::shared_ptr< ::slam_planner::LED > LEDPtr;
typedef boost::shared_ptr< ::slam_planner::LED const> LEDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slam_planner::LED_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slam_planner::LED_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slam_planner::LED_<ContainerAllocator1> & lhs, const ::slam_planner::LED_<ContainerAllocator2> & rhs)
{
  return lhs.r == rhs.r &&
    lhs.g == rhs.g &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slam_planner::LED_<ContainerAllocator1> & lhs, const ::slam_planner::LED_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slam_planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slam_planner::LED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slam_planner::LED_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_planner::LED_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_planner::LED_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_planner::LED_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_planner::LED_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slam_planner::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "353891e354491c51aabe32df673fb446";
  }

  static const char* value(const ::slam_planner::LED_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x353891e354491c51ULL;
  static const uint64_t static_value2 = 0xaabe32df673fb446ULL;
};

template<class ContainerAllocator>
struct DataType< ::slam_planner::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slam_planner/LED";
  }

  static const char* value(const ::slam_planner::LED_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slam_planner::LED_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 r\n"
"uint8 g\n"
"uint8 b\n"
;
  }

  static const char* value(const ::slam_planner::LED_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slam_planner::LED_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LED_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slam_planner::LED_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slam_planner::LED_<ContainerAllocator>& v)
  {
    s << indent << "r: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAM_PLANNER_MESSAGE_LED_H
