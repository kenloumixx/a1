// Generated by gencpp from file slamware_ros_sdk/ClearMapRequest.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_CLEARMAPREQUEST_H
#define SLAMWARE_ROS_SDK_MESSAGE_CLEARMAPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <slamware_ros_sdk/MapKind.h>

namespace slamware_ros_sdk
{
template <class ContainerAllocator>
struct ClearMapRequest_
{
  typedef ClearMapRequest_<ContainerAllocator> Type;

  ClearMapRequest_()
    : kind()  {
    }
  ClearMapRequest_(const ContainerAllocator& _alloc)
    : kind(_alloc)  {
  (void)_alloc;
    }



   typedef  ::slamware_ros_sdk::MapKind_<ContainerAllocator>  _kind_type;
  _kind_type kind;





  typedef boost::shared_ptr< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ClearMapRequest_

typedef ::slamware_ros_sdk::ClearMapRequest_<std::allocator<void> > ClearMapRequest;

typedef boost::shared_ptr< ::slamware_ros_sdk::ClearMapRequest > ClearMapRequestPtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::ClearMapRequest const> ClearMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.kind == rhs.kind;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f72328e91181466c30c2e2df2871f6a6";
  }

  static const char* value(const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf72328e91181466cULL;
  static const uint64_t static_value2 = 0x30c2e2df2871f6a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/ClearMapRequest";
  }

  static const char* value(const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"MapKind kind\n"
"\n"
"================================================================================\n"
"MSG: slamware_ros_sdk/MapKind\n"
"\n"
"int8 UNKNOWN=-1\n"
"int8 EXPLORERMAP=0\n"
"int8 SWEEPERMAP=1\n"
"int8 UWBMAP=2\n"
"int8 SLAMMAP=3\n"
"int8 LOCALSLAMMAP=4\n"
"\n"
"int8 kind\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.kind);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClearMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::ClearMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "kind: ";
    s << std::endl;
    Printer< ::slamware_ros_sdk::MapKind_<ContainerAllocator> >::stream(s, indent + "  ", v.kind);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_CLEARMAPREQUEST_H
