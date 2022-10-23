// Generated by gencpp from file slamware_ros_sdk/MoveOptionFlag.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_MOVEOPTIONFLAG_H
#define SLAMWARE_ROS_SDK_MESSAGE_MOVEOPTIONFLAG_H


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
struct MoveOptionFlag_
{
  typedef MoveOptionFlag_<ContainerAllocator> Type;

  MoveOptionFlag_()
    : flags(0)  {
    }
  MoveOptionFlag_(const ContainerAllocator& _alloc)
    : flags(0)  {
  (void)_alloc;
    }



   typedef uint32_t _flags_type;
  _flags_type flags;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NONE)
  #undef NONE
#endif
#if defined(_WIN32) && defined(APPENDING)
  #undef APPENDING
#endif
#if defined(_WIN32) && defined(MILESTONE)
  #undef MILESTONE
#endif
#if defined(_WIN32) && defined(NO_SMOOTH)
  #undef NO_SMOOTH
#endif
#if defined(_WIN32) && defined(KEY_POINTS)
  #undef KEY_POINTS
#endif
#if defined(_WIN32) && defined(PRECISE)
  #undef PRECISE
#endif
#if defined(_WIN32) && defined(WITH_YAW)
  #undef WITH_YAW
#endif
#if defined(_WIN32) && defined(RETURN_UNREACHABLE_DIRECTLY)
  #undef RETURN_UNREACHABLE_DIRECTLY
#endif
#if defined(_WIN32) && defined(KEY_POINTS_WITH_OA)
  #undef KEY_POINTS_WITH_OA
#endif

  enum {
    NONE = 0u,
    APPENDING = 1u,
    MILESTONE = 2u,
    NO_SMOOTH = 4u,
    KEY_POINTS = 8u,
    PRECISE = 16u,
    WITH_YAW = 32u,
    RETURN_UNREACHABLE_DIRECTLY = 64u,
    KEY_POINTS_WITH_OA = 128u,
  };


  typedef boost::shared_ptr< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> const> ConstPtr;

}; // struct MoveOptionFlag_

typedef ::slamware_ros_sdk::MoveOptionFlag_<std::allocator<void> > MoveOptionFlag;

typedef boost::shared_ptr< ::slamware_ros_sdk::MoveOptionFlag > MoveOptionFlagPtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::MoveOptionFlag const> MoveOptionFlagConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator2> & rhs)
{
  return lhs.flags == rhs.flags;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator1> & lhs, const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a049fc03ba102569fc7d6e34f883c22";
  }

  static const char* value(const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a049fc03ba10256ULL;
  static const uint64_t static_value2 = 0x9fc7d6e34f883c22ULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/MoveOptionFlag";
  }

  static const char* value(const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 NONE=0\n"
"uint32 APPENDING=1\n"
"uint32 MILESTONE=2\n"
"uint32 NO_SMOOTH=4\n"
"uint32 KEY_POINTS=8\n"
"uint32 PRECISE=16\n"
"uint32 WITH_YAW=32\n"
"uint32 RETURN_UNREACHABLE_DIRECTLY=64\n"
"uint32 KEY_POINTS_WITH_OA=128\n"
"\n"
"uint32 flags\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flags);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveOptionFlag_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slamware_ros_sdk::MoveOptionFlag_<ContainerAllocator>& v)
  {
    s << indent << "flags: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.flags);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_MOVEOPTIONFLAG_H
