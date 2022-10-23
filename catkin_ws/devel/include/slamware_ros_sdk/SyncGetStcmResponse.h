// Generated by gencpp from file slamware_ros_sdk/SyncGetStcmResponse.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMRESPONSE_H
#define SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMRESPONSE_H


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
struct SyncGetStcmResponse_
{
  typedef SyncGetStcmResponse_<ContainerAllocator> Type;

  SyncGetStcmResponse_()
    : raw_stcm()  {
    }
  SyncGetStcmResponse_(const ContainerAllocator& _alloc)
    : raw_stcm(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _raw_stcm_type;
  _raw_stcm_type raw_stcm;





  typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SyncGetStcmResponse_

typedef ::slamware_ros_sdk::SyncGetStcmResponse_<std::allocator<void> > SyncGetStcmResponse;

typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmResponse > SyncGetStcmResponsePtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmResponse const> SyncGetStcmResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator2> & rhs)
{
  return lhs.raw_stcm == rhs.raw_stcm;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8474031e9b4b9443bc35727251a73587";
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8474031e9b4b9443ULL;
  static const uint64_t static_value2 = 0xbc35727251a73587ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/SyncGetStcmResponse";
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#response\n"
"uint8[] raw_stcm\n"
"\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.raw_stcm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SyncGetStcmResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::SyncGetStcmResponse_<ContainerAllocator>& v)
  {
    s << indent << "raw_stcm[]" << std::endl;
    for (size_t i = 0; i < v.raw_stcm.size(); ++i)
    {
      s << indent << "  raw_stcm[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.raw_stcm[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMRESPONSE_H
