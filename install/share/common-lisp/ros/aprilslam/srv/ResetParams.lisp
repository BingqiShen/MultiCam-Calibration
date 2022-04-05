; Auto-generated. Do not edit!


(cl:in-package aprilslam-srv)


;//! \htmlinclude ResetParams-request.msg.html

(cl:defclass <ResetParams-request> (roslisp-msg-protocol:ros-message)
  ((intrinsic_file_name
    :reader intrinsic_file_name
    :initarg :intrinsic_file_name
    :type cl:string
    :initform "")
   (camera_topic
    :reader camera_topic
    :initarg :camera_topic
    :type cl:string
    :initform "")
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:integer
    :initform 0)
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetParams-request (<ResetParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aprilslam-srv:<ResetParams-request> is deprecated: use aprilslam-srv:ResetParams-request instead.")))

(cl:ensure-generic-function 'intrinsic_file_name-val :lambda-list '(m))
(cl:defmethod intrinsic_file_name-val ((m <ResetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:intrinsic_file_name-val is deprecated.  Use aprilslam-srv:intrinsic_file_name instead.")
  (intrinsic_file_name m))

(cl:ensure-generic-function 'camera_topic-val :lambda-list '(m))
(cl:defmethod camera_topic-val ((m <ResetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:camera_topic-val is deprecated.  Use aprilslam-srv:camera_topic instead.")
  (camera_topic m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <ResetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:camera_id-val is deprecated.  Use aprilslam-srv:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <ResetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:image_width-val is deprecated.  Use aprilslam-srv:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <ResetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:image_height-val is deprecated.  Use aprilslam-srv:image_height instead.")
  (image_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetParams-request>) ostream)
  "Serializes a message object of type '<ResetParams-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intrinsic_file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intrinsic_file_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_topic))
  (cl:let* ((signed (cl:slot-value msg 'camera_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetParams-request>) istream)
  "Deserializes a message object of type '<ResetParams-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intrinsic_file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intrinsic_file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetParams-request>)))
  "Returns string type for a service object of type '<ResetParams-request>"
  "aprilslam/ResetParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetParams-request)))
  "Returns string type for a service object of type 'ResetParams-request"
  "aprilslam/ResetParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetParams-request>)))
  "Returns md5sum for a message object of type '<ResetParams-request>"
  "67e0b357504ab95687c65d99ab9947b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetParams-request)))
  "Returns md5sum for a message object of type 'ResetParams-request"
  "67e0b357504ab95687c65d99ab9947b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetParams-request>)))
  "Returns full string definition for message of type '<ResetParams-request>"
  (cl:format cl:nil "string intrinsic_file_name~%string camera_topic~%int32 camera_id~%int32 image_width~%int32 image_height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetParams-request)))
  "Returns full string definition for message of type 'ResetParams-request"
  (cl:format cl:nil "string intrinsic_file_name~%string camera_topic~%int32 camera_id~%int32 image_width~%int32 image_height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetParams-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'intrinsic_file_name))
     4 (cl:length (cl:slot-value msg 'camera_topic))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetParams-request
    (cl:cons ':intrinsic_file_name (intrinsic_file_name msg))
    (cl:cons ':camera_topic (camera_topic msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
))
;//! \htmlinclude ResetParams-response.msg.html

(cl:defclass <ResetParams-response> (roslisp-msg-protocol:ros-message)
  ((error_msgs
    :reader error_msgs
    :initarg :error_msgs
    :type cl:string
    :initform ""))
)

(cl:defclass ResetParams-response (<ResetParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aprilslam-srv:<ResetParams-response> is deprecated: use aprilslam-srv:ResetParams-response instead.")))

(cl:ensure-generic-function 'error_msgs-val :lambda-list '(m))
(cl:defmethod error_msgs-val ((m <ResetParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:error_msgs-val is deprecated.  Use aprilslam-srv:error_msgs instead.")
  (error_msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetParams-response>) ostream)
  "Serializes a message object of type '<ResetParams-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetParams-response>) istream)
  "Deserializes a message object of type '<ResetParams-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msgs) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msgs) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetParams-response>)))
  "Returns string type for a service object of type '<ResetParams-response>"
  "aprilslam/ResetParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetParams-response)))
  "Returns string type for a service object of type 'ResetParams-response"
  "aprilslam/ResetParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetParams-response>)))
  "Returns md5sum for a message object of type '<ResetParams-response>"
  "67e0b357504ab95687c65d99ab9947b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetParams-response)))
  "Returns md5sum for a message object of type 'ResetParams-response"
  "67e0b357504ab95687c65d99ab9947b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetParams-response>)))
  "Returns full string definition for message of type '<ResetParams-response>"
  (cl:format cl:nil "string error_msgs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetParams-response)))
  "Returns full string definition for message of type 'ResetParams-response"
  (cl:format cl:nil "string error_msgs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetParams-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error_msgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetParams-response
    (cl:cons ':error_msgs (error_msgs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetParams)))
  'ResetParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetParams)))
  'ResetParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetParams)))
  "Returns string type for a service object of type '<ResetParams>"
  "aprilslam/ResetParams")