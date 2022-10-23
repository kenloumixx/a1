// Generated by gencpp from file slamware_ros_sdk/ImpactType.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_IMPACTTYPE_H
#define SLAMWARE_ROS_SDK_MESSAGE_IMPACTTYPE_H


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
struct ImpactType_
{
  typedef ImpactType_<ContainerAllocator> Type;

  ImpactType_()
    : type(0)  {
    }
  ImpactType_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef int8_t _type_type;
  _type_type type;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(DIGITAL)
  #undef DIGITAL
#endif
#if defined(_WIN32) && defined(ANALOG)
  #undef ANALOG
#endif

  enum {
    UNKNOWN = -1,
    DIGITAL = 0,
    ANALOG = 1,
  };


  typedef boost::shared_ptr< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> const> ConstPtr;

}; // struct ImpactType_

typedef ::slamware_ros_sdk::ImpactType_<std::allocator<void> > ImpactType;

typedef boost::shared_ptr< ::slamware_ros_sdk::ImpactType > ImpactTypePtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::ImpactType const> ImpactTypeConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::ImpactType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::ImpactType_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ImpactType_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::ImpactType_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::ImpactType_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb0559087c3cc3accc5934b2c315c9a4";
  }

  static const char* value(const ::slamware_ros_sdk::ImpactType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb0559087c3cc3acULL;
  static const uint64_t static_value2 = 0xcc5934b2c315c9a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/ImpactType";
  }

  static const char* value(const ::slamware_ros_sdk::ImpactType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int8 UNKNOWN=-1\n"
"int8 DIGITAL=0\n"
"int8 ANALOG=1\n"
"\n"
"int8 type\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::ImpactType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImpactType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::ImpactType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::ImpactType_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_IMPACTTYPE_H