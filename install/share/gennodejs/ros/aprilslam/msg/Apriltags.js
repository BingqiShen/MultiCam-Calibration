// Auto-generated. Do not edit!

// (in-package aprilslam.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Apriltag = require('./Apriltag.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Apriltags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.apriltags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('apriltags')) {
        this.apriltags = initObj.apriltags
      }
      else {
        this.apriltags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Apriltags
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int32(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [apriltags]
    // Serialize the length for message field [apriltags]
    bufferOffset = _serializer.uint32(obj.apriltags.length, buffer, bufferOffset);
    obj.apriltags.forEach((val) => {
      bufferOffset = Apriltag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Apriltags
    let len;
    let data = new Apriltags(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [apriltags]
    // Deserialize array length for message field [apriltags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.apriltags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.apriltags[i] = Apriltag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.apriltags.forEach((val) => {
      length += Apriltag.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aprilslam/Apriltags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00d264e04e8ef34a601ad83c77c08f44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ApriltagsStamped
    std_msgs/Header header
    int32 sensor_id
    Apriltag[] apriltags
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: aprilslam/Apriltag
    # Apriltag
    int32 id
    string family
    float64 size
    int32 hamming_distance
    geometry_msgs/Point center
    geometry_msgs/Point[] corners
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Apriltags(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.apriltags !== undefined) {
      resolved.apriltags = new Array(msg.apriltags.length);
      for (let i = 0; i < resolved.apriltags.length; ++i) {
        resolved.apriltags[i] = Apriltag.Resolve(msg.apriltags[i]);
      }
    }
    else {
      resolved.apriltags = []
    }

    return resolved;
    }
};

module.exports = Apriltags;
