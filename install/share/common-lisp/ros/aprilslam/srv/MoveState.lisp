; Auto-generated. Do not edit!


(cl:in-package aprilslam-srv)


;//! \htmlinclude MoveState-request.msg.html

(cl:defclass <MoveState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveState-request (<MoveState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aprilslam-srv:<MoveState-request> is deprecated: use aprilslam-srv:MoveState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MoveState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:state-val is deprecated.  Use aprilslam-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveState-request>) ostream)
  "Serializes a message object of type '<MoveState-request>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveState-request>) istream)
  "Deserializes a message object of type '<MoveState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveState-request>)))
  "Returns string type for a service object of type '<MoveState-request>"
  "aprilslam/MoveStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveState-request)))
  "Returns string type for a service object of type 'MoveState-request"
  "aprilslam/MoveStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveState-request>)))
  "Returns md5sum for a message object of type '<MoveState-request>"
  "943495411fa218d7df068416952dd94f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveState-request)))
  "Returns md5sum for a message object of type 'MoveState-request"
  "943495411fa218d7df068416952dd94f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveState-request>)))
  "Returns full string definition for message of type '<MoveState-request>"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveState-request)))
  "Returns full string definition for message of type 'MoveState-request"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude MoveState-response.msg.html

(cl:defclass <MoveState-response> (roslisp-msg-protocol:ros-message)
  ((error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass MoveState-response (<MoveState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aprilslam-srv:<MoveState-response> is deprecated: use aprilslam-srv:MoveState-response instead.")))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <MoveState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aprilslam-srv:error_message-val is deprecated.  Use aprilslam-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveState-response>) ostream)
  "Serializes a message object of type '<MoveState-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveState-response>) istream)
  "Deserializes a message object of type '<MoveState-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveState-response>)))
  "Returns string type for a service object of type '<MoveState-response>"
  "aprilslam/MoveStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveState-response)))
  "Returns string type for a service object of type 'MoveState-response"
  "aprilslam/MoveStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveState-response>)))
  "Returns md5sum for a message object of type '<MoveState-response>"
  "943495411fa218d7df068416952dd94f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveState-response)))
  "Returns md5sum for a message object of type 'MoveState-response"
  "943495411fa218d7df068416952dd94f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveState-response>)))
  "Returns full string definition for message of type '<MoveState-response>"
  (cl:format cl:nil "string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveState-response)))
  "Returns full string definition for message of type 'MoveState-response"
  (cl:format cl:nil "string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveState-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveState-response
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveState)))
  'MoveState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveState)))
  'MoveState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveState)))
  "Returns string type for a service object of type '<MoveState>"
  "aprilslam/MoveState")