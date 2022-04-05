// Auto-generated. Do not edit!

// (in-package aprilslam.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intrinsic_file_name = null;
      this.camera_topic = null;
      this.camera_id = null;
      this.image_width = null;
      this.image_height = null;
    }
    else {
      if (initObj.hasOwnProperty('intrinsic_file_name')) {
        this.intrinsic_file_name = initObj.intrinsic_file_name
      }
      else {
        this.intrinsic_file_name = '';
      }
      if (initObj.hasOwnProperty('camera_topic')) {
        this.camera_topic = initObj.camera_topic
      }
      else {
        this.camera_topic = '';
      }
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = 0;
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetParamsRequest
    // Serialize message field [intrinsic_file_name]
    bufferOffset = _serializer.string(obj.intrinsic_file_name, buffer, bufferOffset);
    // Serialize message field [camera_topic]
    bufferOffset = _serializer.string(obj.camera_topic, buffer, bufferOffset);
    // Serialize message field [camera_id]
    bufferOffset = _serializer.int32(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int32(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int32(obj.image_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetParamsRequest
    let len;
    let data = new ResetParamsRequest(null);
    // Deserialize message field [intrinsic_file_name]
    data.intrinsic_file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_topic]
    data.camera_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.intrinsic_file_name.length;
    length += object.camera_topic.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aprilslam/ResetParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2759a9cc110b56097e15d4d2b8d9ec7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string intrinsic_file_name
    string camera_topic
    int32 camera_id
    int32 image_width
    int32 image_height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetParamsRequest(null);
    if (msg.intrinsic_file_name !== undefined) {
      resolved.intrinsic_file_name = msg.intrinsic_file_name;
    }
    else {
      resolved.intrinsic_file_name = ''
    }

    if (msg.camera_topic !== undefined) {
      resolved.camera_topic = msg.camera_topic;
    }
    else {
      resolved.camera_topic = ''
    }

    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = 0
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    return resolved;
    }
};

class ResetParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('error_msgs')) {
        this.error_msgs = initObj.error_msgs
      }
      else {
        this.error_msgs = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetParamsResponse
    // Serialize message field [error_msgs]
    bufferOffset = _serializer.string(obj.error_msgs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetParamsResponse
    let len;
    let data = new ResetParamsResponse(null);
    // Deserialize message field [error_msgs]
    data.error_msgs = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msgs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aprilslam/ResetParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31076761bb7a15c7d145b393c8a56624';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string error_msgs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetParamsResponse(null);
    if (msg.error_msgs !== undefined) {
      resolved.error_msgs = msg.error_msgs;
    }
    else {
      resolved.error_msgs = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ResetParamsRequest,
  Response: ResetParamsResponse,
  md5sum() { return '67e0b357504ab95687c65d99ab9947b9'; },
  datatype() { return 'aprilslam/ResetParams'; }
};
