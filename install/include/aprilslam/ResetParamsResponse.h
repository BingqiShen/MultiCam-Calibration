// Generated by gencpp from file aprilslam/ResetParamsResponse.msg
// DO NOT EDIT!


#ifndef APRILSLAM_MESSAGE_RESETPARAMSRESPONSE_H
#define APRILSLAM_MESSAGE_RESETPARAMSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aprilslam
{
template <class ContainerAllocator>
struct ResetParamsResponse_
{
  typedef ResetParamsResponse_<ContainerAllocator> Type;

  ResetParamsResponse_()
    : error_msgs()  {
    }
  ResetParamsResponse_(const ContainerAllocator& _alloc)
    : error_msgs(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_msgs_type;
  _error_msgs_type error_msgs;





  typedef boost::shared_ptr< ::aprilslam::ResetParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aprilslam::ResetParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ResetParamsResponse_

typedef ::aprilslam::ResetParamsResponse_<std::allocator<void> > ResetParamsResponse;

typedef boost::shared_ptr< ::aprilslam::ResetParamsResponse > ResetParamsResponsePtr;
typedef boost::shared_ptr< ::aprilslam::ResetParamsResponse const> ResetParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aprilslam::ResetParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aprilslam

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'aprilslam': ['/home/cyy/ws/jz_project/catkin_ws/src/caliber/aprilslam/aprilslam/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aprilslam::ResetParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aprilslam::ResetParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aprilslam::ResetParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31076761bb7a15c7d145b393c8a56624";
  }

  static const char* value(const ::aprilslam::ResetParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31076761bb7a15c7ULL;
  static const uint64_t static_value2 = 0xd145b393c8a56624ULL;
};

template<class ContainerAllocator>
struct DataType< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aprilslam/ResetParamsResponse";
  }

  static const char* value(const ::aprilslam::ResetParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string error_msgs\n\
";
  }

  static const char* value(const ::aprilslam::ResetParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error_msgs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResetParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aprilslam::ResetParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aprilslam::ResetParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "error_msgs: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_msgs);
  }
};

} // namespace message_operations
} // namespace ros

#endif // APRILSLAM_MESSAGE_RESETPARAMSRESPONSE_H
