// Generated by gencpp from file slamware_ros_sdk/MoveLinesRequest.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_MOVELINESREQUEST_H
#define SLAMWARE_ROS_SDK_MESSAGE_MOVELINESREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <slamware_ros_sdk/ArtifactUsage.h>
#include <slamware_ros_sdk/Line2DFlt32.h>

namespace slamware_ros_sdk
{
template <class ContainerAllocator>
struct MoveLinesRequest_
{
  typedef MoveLinesRequest_<ContainerAllocator> Type;

  MoveLinesRequest_()
    : usage()
    , lines()  {
    }
  MoveLinesRequest_(const ContainerAllocator& _alloc)
    : usage(_alloc)
    , lines(_alloc)  {
  (void)_alloc;
    }



   typedef  ::slamware_ros_sdk::ArtifactUsage_<ContainerAllocator>  _usage_type;
  _usage_type usage;

   typedef std::vector< ::slamware_ros_sdk::Line2DFlt32_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::slamware_ros_sdk::Line2DFlt32_<ContainerAllocator> >::other >  _lines_type;
  _lines_type lines;





  typedef boost::shared_ptr< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveLinesRequest_

typedef ::slamware_ros_sdk::MoveLinesRequest_<std::allocator<void> > MoveLinesRequest;

typedef boost::shared_ptr< ::slamware_ros_sdk::MoveLinesRequest > MoveLinesRequestPtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::MoveLinesRequest const> MoveLinesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.usage == rhs.usage &&
    lhs.lines == rhs.lines;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d61deeb485ff397ff8a058bf9dc0220";
  }

  static const char* value(const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d61deeb485ff397ULL;
  static const uint64_t static_value2 = 0xff8a058bf9dc0220ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/MoveLinesRequest";
  }

  static const char* value(const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"ArtifactUsage usage\n"
"Line2DFlt32[] lines\n"
"\n"
"================================================================================\n"
"MSG: slamware_ros_sdk/ArtifactUsage\n"
"\n"
"int8 UNKNOWN=-1\n"
"int8 VIRTUAL_WALL=0\n"
"int8 VIRTUAL_TRACK=1\n"
"\n"
"int8 usage\n"
"\n"
"================================================================================\n"
"MSG: slamware_ros_sdk/Line2DFlt32\n"
"\n"
"uint32 id\n"
"Vec2DFlt32 start\n"
"Vec2DFlt32 end\n"
"\n"
"================================================================================\n"
"MSG: slamware_ros_sdk/Vec2DFlt32\n"
"\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.usage);
      stream.next(m.lines);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveLinesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::MoveLinesRequest_<ContainerAllocator>& v)
  {
    s << indent << "usage: ";
    s << std::endl;
    Printer< ::slamware_ros_sdk::ArtifactUsage_<ContainerAllocator> >::stream(s, indent + "  ", v.usage);
    s << indent << "lines[]" << std::endl;
    for (size_t i = 0; i < v.lines.size(); ++i)
    {
      s << indent << "  lines[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::slamware_ros_sdk::Line2DFlt32_<ContainerAllocator> >::stream(s, indent + "    ", v.lines[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_MOVELINESREQUEST_H
