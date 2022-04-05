;; Auto-generated. Do not edit!


(when (boundp 'aprilslam::Apriltag)
  (if (not (find-package "APRILSLAM"))
    (make-package "APRILSLAM"))
  (shadow 'Apriltag (find-package "APRILSLAM")))
(unless (find-package "APRILSLAM::APRILTAG")
  (make-package "APRILSLAM::APRILTAG"))

(in-package "ROS")
;;//! \htmlinclude Apriltag.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass aprilslam::Apriltag
  :super ros::object
  :slots (_id _family _size _hamming_distance _center _corners _pose ))

(defmethod aprilslam::Apriltag
  (:init
   (&key
    ((:id __id) 0)
    ((:family __family) "")
    ((:size __size) 0.0)
    ((:hamming_distance __hamming_distance) 0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:corners __corners) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _family (string __family))
   (setq _size (float __size))
   (setq _hamming_distance (round __hamming_distance))
   (setq _center __center)
   (setq _corners __corners)
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:family
   (&optional __family)
   (if __family (setq _family __family)) _family)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:hamming_distance
   (&optional __hamming_distance)
   (if __hamming_distance (setq _hamming_distance __hamming_distance)) _hamming_distance)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _family
    4 (length _family)
    ;; float64 _size
    8
    ;; int32 _hamming_distance
    4
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _family
       (write-long (length _family) s) (princ _family s)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _hamming_distance
       (write-long _hamming_distance s)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _family
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _family (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _hamming_distance
     (setq _hamming_distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get aprilslam::Apriltag :md5sum-) "ae7cf1294fdf73ec26bf785570c3a80d")
(setf (get aprilslam::Apriltag :datatype-) "aprilslam/Apriltag")
(setf (get aprilslam::Apriltag :definition-)
      "# Apriltag
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



(provide :aprilslam/Apriltag "ae7cf1294fdf73ec26bf785570c3a80d")


