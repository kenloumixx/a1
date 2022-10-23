// Generated by gencpp from file slamware_ros_sdk/Vec2DFlt32.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_VEC2DFLT32_H
#define SLAMWARE_ROS_SDK_MESSAGE_VEC2DFLT32_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace slamware_ros_sdk
{
template <class ContainerAllocator>
struct Vec2DFlt32_
{
  typedef Vec2DFlt32_<ContainerAllocator> Type;

  Vec2DFlt32_()
    : x(0.0)
    , y(0.0)  {
    }
  Vec2DFlt32_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> const> ConstPtr;

}; // struct Vec2DFlt32_

typedef ::slamware_ros_sdk::Vec2DFlt32_<std::allocator<void> > Vec2DFlt32;

typedef boost::shared_ptr< ::slamware_ros_sdk::Vec2DFlt32 > Vec2DFlt32Ptr;
typedef boost::shared_ptr< ::slamware_ros_sdk::Vec2DFlt32 const> Vec2DFlt32ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/Vec2DFlt32";
  }

  static const char* value(const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vec2DFlt32_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::Vec2DFlt32_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_VEC2DFLT32_H
