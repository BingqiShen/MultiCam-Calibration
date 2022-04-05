;; Auto-generated. Do not edit!


(when (boundp 'aprilslam::Apriltags)
  (if (not (find-package "APRILSLAM"))
    (make-package "APRILSLAM"))
  (shadow 'Apriltags (find-package "APRILSLAM")))
(unless (find-package "APRILSLAM::APRILTAGS")
  (make-package "APRILSLAM::APRILTAGS"))

(in-package "ROS")
;;//! \htmlinclude Apriltags.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aprilslam::Apriltags
  :super ros::object
  :slots (_header _sensor_id _apriltags ))

(defmethod aprilslam::Apriltags
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:apriltags __apriltags) (let (r) (dotimes (i 0) (push (instance aprilslam::Apriltag :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _apriltags __apriltags)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:apriltags
   (&rest __apriltags)
   (if (keywordp (car __apriltags))
       (send* _apriltags __apriltags)
     (progn
       (if __apriltags (setq _apriltags (car __apriltags)))
       _apriltags)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _sensor_id
    4
    ;; aprilslam/Apriltag[] _apriltags
    (apply #'+ (send-all _apriltags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; aprilslam/Apriltag[] _apriltags
     (write-long (length _apriltags) s)
     (dolist (elem _apriltags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; aprilslam/Apriltag[] _apriltags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _apriltags (let (r) (dotimes (i n) (push (instance aprilslam::Apriltag :init) r)) r))
     (dolist (elem- _apriltags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get aprilslam::Apriltags :md5sum-) "00d264e04e8ef34a601ad83c77c08f44")
(setf (get aprilslam::Apriltags :datatype-) "aprilslam/Apriltags")
(setf (get aprilslam::Apriltags :definition-)
      "# ApriltagsStamped
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

")



(provide :aprilslam/Apriltags "00d264e04e8ef34a601ad83c77c08f44")


