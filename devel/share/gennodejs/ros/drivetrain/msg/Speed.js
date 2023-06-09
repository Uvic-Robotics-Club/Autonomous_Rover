// Auto-generated. Do not edit!

// (in-package drivetrain.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Speed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftspeed = null;
      this.rightspeed = null;
      this.leftdirection = null;
      this.rightdirection = null;
    }
    else {
      if (initObj.hasOwnProperty('leftspeed')) {
        this.leftspeed = initObj.leftspeed
      }
      else {
        this.leftspeed = 0;
      }
      if (initObj.hasOwnProperty('rightspeed')) {
        this.rightspeed = initObj.rightspeed
      }
      else {
        this.rightspeed = 0;
      }
      if (initObj.hasOwnProperty('leftdirection')) {
        this.leftdirection = initObj.leftdirection
      }
      else {
        this.leftdirection = 0;
      }
      if (initObj.hasOwnProperty('rightdirection')) {
        this.rightdirection = initObj.rightdirection
      }
      else {
        this.rightdirection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Speed
    // Serialize message field [leftspeed]
    bufferOffset = _serializer.int64(obj.leftspeed, buffer, bufferOffset);
    // Serialize message field [rightspeed]
    bufferOffset = _serializer.int64(obj.rightspeed, buffer, bufferOffset);
    // Serialize message field [leftdirection]
    bufferOffset = _serializer.int64(obj.leftdirection, buffer, bufferOffset);
    // Serialize message field [rightdirection]
    bufferOffset = _serializer.int64(obj.rightdirection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Speed
    let len;
    let data = new Speed(null);
    // Deserialize message field [leftspeed]
    data.leftspeed = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rightspeed]
    data.rightspeed = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [leftdirection]
    data.leftdirection = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rightdirection]
    data.rightdirection = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drivetrain/Speed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e411503b1c3b7e55df6f17adf4515654';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 leftspeed
    int64 rightspeed
    int64 leftdirection
    int64 rightdirection
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Speed(null);
    if (msg.leftspeed !== undefined) {
      resolved.leftspeed = msg.leftspeed;
    }
    else {
      resolved.leftspeed = 0
    }

    if (msg.rightspeed !== undefined) {
      resolved.rightspeed = msg.rightspeed;
    }
    else {
      resolved.rightspeed = 0
    }

    if (msg.leftdirection !== undefined) {
      resolved.leftdirection = msg.leftdirection;
    }
    else {
      resolved.leftdirection = 0
    }

    if (msg.rightdirection !== undefined) {
      resolved.rightdirection = msg.rightdirection;
    }
    else {
      resolved.rightdirection = 0
    }

    return resolved;
    }
};

module.exports = Speed;
