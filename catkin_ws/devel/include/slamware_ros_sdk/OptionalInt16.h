// Generated by gencpp from file slamware_ros_sdk/OptionalInt16.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_OPTIONALINT16_H
#define SLAMWARE_ROS_SDK_MESSAGE_OPTIONALINT16_H


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
struct OptionalInt16_
{
  typedef OptionalInt16_<ContainerAllocator> Type;

  OptionalInt16_()
    : is_valid(false)
    , value(0)  {
    }
  OptionalInt16_(const ContainerAllocator& _alloc)
    : is_valid(false)
    , value(0)  {
  (void)_alloc;
    }



   typedef uint8_t _is_valid_type;
  _is_valid_type is_valid;

   typedef int16_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> const> ConstPtr;

}; // struct OptionalInt16_

typedef ::slamware_ros_sdk::OptionalInt16_<std::allocator<void> > OptionalInt16;

typedef boost::shared_ptr< ::slamware_ros_sdk::OptionalInt16 > OptionalInt16Ptr;
typedef boost::shared_ptr< ::slamware_ros_sdk::OptionalInt16 const> OptionalInt16ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator2> & rhs)
{
  return lhs.is_valid == rhs.is_valid &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc7d4307404f0f0784482a8b8af47a30";
  }

  static const char* value(const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc7d4307404f0f07ULL;
  static const uint64_t static_value2 = 0x84482a8b8af47a30ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/OptionalInt16";
  }

  static const char* value(const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool is_valid\n"
"int16 value\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_valid);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OptionalInt16_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::OptionalInt16_<ContainerAllocator>& v)
  {
    s << indent << "is_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_valid);
    s << indent << "value: ";
    Printer<int16_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_OPTIONALINT16_H
