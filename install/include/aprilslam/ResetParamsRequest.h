// Generated by gencpp from file aprilslam/ResetParamsRequest.msg
// DO NOT EDIT!


#ifndef APRILSLAM_MESSAGE_RESETPARAMSREQUEST_H
#define APRILSLAM_MESSAGE_RESETPARAMSREQUEST_H


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
struct ResetParamsRequest_
{
  typedef ResetParamsRequest_<ContainerAllocator> Type;

  ResetParamsRequest_()
    : intrinsic_file_name()
    , camera_topic()
    , camera_id(0)
    , image_width(0)
    , image_height(0)  {
    }
  ResetParamsRequest_(const ContainerAllocator& _alloc)
    : intrinsic_file_name(_alloc)
    , camera_topic(_alloc)
    , camera_id(0)
    , image_width(0)
    , image_height(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _intrinsic_file_name_type;
  _intrinsic_file_name_type intrinsic_file_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _camera_topic_type;
  _camera_topic_type camera_topic;

   typedef int32_t _camera_id_type;
  _camera_id_type camera_id;

   typedef int32_t _image_width_type;
  _image_width_type image_width;

   typedef int32_t _image_height_type;
  _image_height_type image_height;





  typedef boost::shared_ptr< ::aprilslam::ResetParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aprilslam::ResetParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ResetParamsRequest_

typedef ::aprilslam::ResetParamsRequest_<std::allocator<void> > ResetParamsRequest;

typedef boost::shared_ptr< ::aprilslam::ResetParamsRequest > ResetParamsRequestPtr;
typedef boost::shared_ptr< ::aprilslam::ResetParamsRequest const> ResetParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aprilslam::ResetParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aprilslam::ResetParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aprilslam::ResetParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aprilslam::ResetParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2759a9cc110b56097e15d4d2b8d9ec7f";
  }

  static const char* value(const ::aprilslam::ResetParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2759a9cc110b5609ULL;
  static const uint64_t static_value2 = 0x7e15d4d2b8d9ec7fULL;
};

template<class ContainerAllocator>
struct DataType< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aprilslam/ResetParamsRequest";
  }

  static const char* value(const ::aprilslam::ResetParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string intrinsic_file_name\n\
string camera_topic\n\
int32 camera_id\n\
int32 image_width\n\
int32 image_height\n\
";
  }

  static const char* value(const ::aprilslam::ResetParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.intrinsic_file_name);
      stream.next(m.camera_topic);
      stream.next(m.camera_id);
      stream.next(m.image_width);
      stream.next(m.image_height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResetParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aprilslam::ResetParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aprilslam::ResetParamsRequest_<ContainerAllocator>& v)
  {
    s << indent << "intrinsic_file_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.intrinsic_file_name);
    s << indent << "camera_topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.camera_topic);
    s << indent << "camera_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.camera_id);
    s << indent << "image_width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.image_width);
    s << indent << "image_height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.image_height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // APRILSLAM_MESSAGE_RESETPARAMSREQUEST_H
