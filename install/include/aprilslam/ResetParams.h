// Generated by gencpp from file aprilslam/ResetParams.msg
// DO NOT EDIT!


#ifndef APRILSLAM_MESSAGE_RESETPARAMS_H
#define APRILSLAM_MESSAGE_RESETPARAMS_H

#include <ros/service_traits.h>


#include <aprilslam/ResetParamsRequest.h>
#include <aprilslam/ResetParamsResponse.h>


namespace aprilslam
{

struct ResetParams
{

typedef ResetParamsRequest Request;
typedef ResetParamsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ResetParams
} // namespace aprilslam


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aprilslam::ResetParams > {
  static const char* value()
  {
    return "67e0b357504ab95687c65d99ab9947b9";
  }

  static const char* value(const ::aprilslam::ResetParams&) { return value(); }
};

template<>
struct DataType< ::aprilslam::ResetParams > {
  static const char* value()
  {
    return "aprilslam/ResetParams";
  }

  static const char* value(const ::aprilslam::ResetParams&) { return value(); }
};


// service_traits::MD5Sum< ::aprilslam::ResetParamsRequest> should match 
// service_traits::MD5Sum< ::aprilslam::ResetParams > 
template<>
struct MD5Sum< ::aprilslam::ResetParamsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aprilslam::ResetParams >::value();
  }
  static const char* value(const ::aprilslam::ResetParamsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aprilslam::ResetParamsRequest> should match 
// service_traits::DataType< ::aprilslam::ResetParams > 
template<>
struct DataType< ::aprilslam::ResetParamsRequest>
{
  static const char* value()
  {
    return DataType< ::aprilslam::ResetParams >::value();
  }
  static const char* value(const ::aprilslam::ResetParamsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aprilslam::ResetParamsResponse> should match 
// service_traits::MD5Sum< ::aprilslam::ResetParams > 
template<>
struct MD5Sum< ::aprilslam::ResetParamsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aprilslam::ResetParams >::value();
  }
  static const char* value(const ::aprilslam::ResetParamsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aprilslam::ResetParamsResponse> should match 
// service_traits::DataType< ::aprilslam::ResetParams > 
template<>
struct DataType< ::aprilslam::ResetParamsResponse>
{
  static const char* value()
  {
    return DataType< ::aprilslam::ResetParams >::value();
  }
  static const char* value(const ::aprilslam::ResetParamsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // APRILSLAM_MESSAGE_RESETPARAMS_H
