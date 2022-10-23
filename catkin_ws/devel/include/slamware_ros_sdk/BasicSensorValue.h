// Generated by gencpp from file slamware_ros_sdk/BasicSensorValue.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_BASICSENSORVALUE_H
#define SLAMWARE_ROS_SDK_MESSAGE_BASICSENSORVALUE_H


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
struct BasicSensorValue_
{
  typedef BasicSensorValue_<ContainerAllocator> Type;

  BasicSensorValue_()
    : is_in_impact(false)
    , value(0.0)  {
    }
  BasicSensorValue_(const ContainerAllocator& _alloc)
    : is_in_impact(false)
    , value(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _is_in_impact_type;
  _is_in_impact_type is_in_impact;

   typedef float _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> const> ConstPtr;

}; // struct BasicSensorValue_

typedef ::slamware_ros_sdk::BasicSensorValue_<std::allocator<void> > BasicSensorValue;

typedef boost::shared_ptr< ::slamware_ros_sdk::BasicSensorValue > BasicSensorValuePtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::BasicSensorValue const> BasicSensorValueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator2> & rhs)
{
  return lhs.is_in_impact == rhs.is_in_impact &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "74a8c68fc77f36ccc19ff403f5d53170";
  }

  static const char* value(const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x74a8c68fc77f36ccULL;
  static const uint64_t static_value2 = 0xc19ff403f5d53170ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/BasicSensorValue";
  }

  static const char* value(const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool is_in_impact			# whether this sensor is in impact status\n"
"float32 value\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_in_impact);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BasicSensorValue_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::BasicSensorValue_<ContainerAllocator>& v)
  {
    s << indent << "is_in_impact: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_in_impact);
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_BASICSENSORVALUE_H