// Auto-generated. Do not edit!

// (in-package reflector_locate.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class reflector_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.ref_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('ref_pose')) {
        this.ref_pose = initObj.ref_pose
      }
      else {
        this.ref_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type reflector_msgs
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [ref_pose]
    // Serialize the length for message field [ref_pose]
    bufferOffset = _serializer.uint32(obj.ref_pose.length, buffer, bufferOffset);
    obj.ref_pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type reflector_msgs
    let len;
    let data = new reflector_msgs(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ref_pose]
    // Deserialize array length for message field [ref_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ref_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ref_pose[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.ref_pose.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'reflector_locate/reflector_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ffbf8bb0ea508bbc2abd2bd6aa4aeda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ########################################
    # Messages
    ########################################
    uint8 id 
    geometry_msgs/Point[] ref_pose
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new reflector_msgs(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.ref_pose !== undefined) {
      resolved.ref_pose = new Array(msg.ref_pose.length);
      for (let i = 0; i < resolved.ref_pose.length; ++i) {
        resolved.ref_pose[i] = geometry_msgs.msg.Point.Resolve(msg.ref_pose[i]);
      }
    }
    else {
      resolved.ref_pose = []
    }

    return resolved;
    }
};

module.exports = reflector_msgs;
