// Generated by gencpp from file slamware_ros_sdk/RectInt32.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_RECTINT32_H
#define SLAMWARE_ROS_SDK_MESSAGE_RECTINT32_H


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
struct RectInt32_
{
  typedef RectInt32_<ContainerAllocator> Type;

  RectInt32_()
    : x(0)
    , y(0)
    , w(0)
    , h(0)  {
    }
  RectInt32_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)
    , w(0)
    , h(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;

   typedef int32_t _w_type;
  _w_type w;

   typedef int32_t _h_type;
  _h_type h;





  typedef boost::shared_ptr< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> const> ConstPtr;

}; // struct RectInt32_

typedef ::slamware_ros_sdk::RectInt32_<std::allocator<void> > RectInt32;

typedef boost::shared_ptr< ::slamware_ros_sdk::RectInt32 > RectInt32Ptr;
typedef boost::shared_ptr< ::slamware_ros_sdk::RectInt32 const> RectInt32ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::RectInt32_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::RectInt32_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::RectInt32_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.w == rhs.w &&
    lhs.h == rhs.h;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::RectInt32_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::RectInt32_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a7147213b29db1bb19b0427bbb901ac";
  }

  static const char* value(const ::slamware_ros_sdk::RectInt32_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a7147213b29db1bULL;
  static const uint64_t static_value2 = 0xb19b0427bbb901acULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/RectInt32";
  }

  static const char* value(const ::slamware_ros_sdk::RectInt32_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 x		# x of position\n"
"int32 y		# y of position\n"
"int32 w		# width\n"
"int32 h		# height\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::RectInt32_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.w);
      stream.next(m.h);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RectInt32_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::RectInt32_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::RectInt32_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "w: ";
    Printer<int32_t>::stream(s, indent + "  ", v.w);
    s << indent << "h: ";
    Printer<int32_t>::stream(s, indent + "  ", v.h);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_RECTINT32_H