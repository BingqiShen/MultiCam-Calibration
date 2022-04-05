; Auto-generated. Do not edit!


(cl:in-package aprilslam-msg)


;//! \htmlinclude Apriltags.msg.html

(cl:defclass <Apriltags> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:integer
    :initform 0)
   (apriltags
    :reader apriltags
    :initarg :apriltags
    :type (cl:vector aprilslam-msg:Apriltag)
   :initform (cl:make-array 0 :element-type 'aprilslam-msg:Apriltag :initial-element (cl:make-instance 'aprilslam-msg:Apriltag))))
)

(cl:defclass Apriltags (<Apriltags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Apriltags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Apriltags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aprilslam-msg:<Apriltags> is deprecated: use aprilslam-msg:Apriltags instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Apriltags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-msg:header-val is deprecated.  Use aprilslam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <Apriltags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-msg:sensor_id-val is deprecated.  Use aprilslam-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'apriltags-val :lambda-list '(m))
(cl:defmethod apriltags-val ((m <Apriltags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-msg:apriltags-val is deprecated.  Use aprilslam-msg:apriltags instead.")
  (apriltags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Apriltags>) ostream)
  "Serializes a message object of type '<Apriltags>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'apriltags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'apriltags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Apriltags>) istream)
  "Deserializes a message object of type '<Apriltags>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'apriltags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'apriltags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'aprilslam-msg:Apriltag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Apriltags>)))
  "Returns string type for a message object of type '<Apriltags>"
  "aprilslam/Apriltags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Apriltags)))
  "Returns string type for a message object of type 'Apriltags"
  "aprilslam/Apriltags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Apriltags>)))
  "Returns md5sum for a message object of type '<Apriltags>"
  "00d264e04e8ef34a601ad83c77c08f44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Apriltags)))
  "Returns md5sum for a message object of type 'Apriltags"
  "00d264e04e8ef34a601ad83c77c08f44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Apriltags>)))
  "Returns full string definition for message of type '<Apriltags>"
  (cl:format cl:nil "# ApriltagsStamped~%std_msgs/Header header~%int32 sensor_id~%Apriltag[] apriltags~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: aprilslam/Apriltag~%# Apriltag~%int32 id~%string family~%float64 size~%int32 hamming_distance~%geometry_msgs/Point center~%geometry_msgs/Point[] corners~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Apriltags)))
  "Returns full string definition for message of type 'Apriltags"
  (cl:format cl:nil "# ApriltagsStamped~%std_msgs/Header header~%int32 sensor_id~%Apriltag[] apriltags~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: aprilslam/Apriltag~%# Apriltag~%int32 id~%string family~%float64 size~%int32 hamming_distance~%geometry_msgs/Point center~%geometry_msgs/Point[] corners~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Apriltags>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'apriltags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Apriltags>))
  "Converts a ROS message object to a list"
  (cl:list 'Apriltags
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':apriltags (apriltags msg))
))
