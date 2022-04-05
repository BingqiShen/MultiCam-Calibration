;; Auto-generated. Do not edit!


(when (boundp 'aprilslam::ResetParams)
  (if (not (find-package "APRILSLAM"))
    (make-package "APRILSLAM"))
  (shadow 'ResetParams (find-package "APRILSLAM")))
(unless (find-package "APRILSLAM::RESETPARAMS")
  (make-package "APRILSLAM::RESETPARAMS"))
(unless (find-package "APRILSLAM::RESETPARAMSREQUEST")
  (make-package "APRILSLAM::RESETPARAMSREQUEST"))
(unless (find-package "APRILSLAM::RESETPARAMSRESPONSE")
  (make-package "APRILSLAM::RESETPARAMSRESPONSE"))

(in-package "ROS")





(defclass aprilslam::ResetParamsRequest
  :super ros::object
  :slots (_intrinsic_file_name _camera_topic _camera_id _image_width _image_height ))

(defmethod aprilslam::ResetParamsRequest
  (:init
   (&key
    ((:intrinsic_file_name __intrinsic_file_name) "")
    ((:camera_topic __camera_topic) "")
    ((:camera_id __camera_id) 0)
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    )
   (send-super :init)
   (setq _intrinsic_file_name (string __intrinsic_file_name))
   (setq _camera_topic (string __camera_topic))
   (setq _camera_id (round __camera_id))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   self)
  (:intrinsic_file_name
   (&optional __intrinsic_file_name)
   (if __intrinsic_file_name (setq _intrinsic_file_name __intrinsic_file_name)) _intrinsic_file_name)
  (:camera_topic
   (&optional __camera_topic)
   (if __camera_topic (setq _camera_topic __camera_topic)) _camera_topic)
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:serialization-length
   ()
   (+
    ;; string _intrinsic_file_name
    4 (length _intrinsic_file_name)
    ;; string _camera_topic
    4 (length _camera_topic)
    ;; int32 _camera_id
    4
    ;; int32 _image_width
    4
    ;; int32 _image_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _intrinsic_file_name
       (write-long (length _intrinsic_file_name) s) (princ _intrinsic_file_name s)
     ;; string _camera_topic
       (write-long (length _camera_topic) s) (princ _camera_topic s)
     ;; int32 _camera_id
       (write-long _camera_id s)
     ;; int32 _image_width
       (write-long _image_width s)
     ;; int32 _image_height
       (write-long _image_height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _intrinsic_file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intrinsic_file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _camera_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _camera_id
     (setq _camera_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aprilslam::ResetParamsResponse
  :super ros::object
  :slots (_error_msgs ))

(defmethod aprilslam::ResetParamsResponse
  (:init
   (&key
    ((:error_msgs __error_msgs) "")
    )
   (send-super :init)
   (setq _error_msgs (string __error_msgs))
   self)
  (:error_msgs
   (&optional __error_msgs)
   (if __error_msgs (setq _error_msgs __error_msgs)) _error_msgs)
  (:serialization-length
   ()
   (+
    ;; string _error_msgs
    4 (length _error_msgs)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _error_msgs
       (write-long (length _error_msgs) s) (princ _error_msgs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _error_msgs
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msgs (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aprilslam::ResetParams
  :super ros::object
  :slots ())

(setf (get aprilslam::ResetParams :md5sum-) "67e0b357504ab95687c65d99ab9947b9")
(setf (get aprilslam::ResetParams :datatype-) "aprilslam/ResetParams")
(setf (get aprilslam::ResetParams :request) aprilslam::ResetParamsRequest)
(setf (get aprilslam::ResetParams :response) aprilslam::ResetParamsResponse)

(defmethod aprilslam::ResetParamsRequest
  (:response () (instance aprilslam::ResetParamsResponse :init)))

(setf (get aprilslam::ResetParamsRequest :md5sum-) "67e0b357504ab95687c65d99ab9947b9")
(setf (get aprilslam::ResetParamsRequest :datatype-) "aprilslam/ResetParamsRequest")
(setf (get aprilslam::ResetParamsRequest :definition-)
      "string intrinsic_file_name
string camera_topic
int32 camera_id
int32 image_width
int32 image_height
---
string error_msgs
")

(setf (get aprilslam::ResetParamsResponse :md5sum-) "67e0b357504ab95687c65d99ab9947b9")
(setf (get aprilslam::ResetParamsResponse :datatype-) "aprilslam/ResetParamsResponse")
(setf (get aprilslam::ResetParamsResponse :definition-)
      "string intrinsic_file_name
string camera_topic
int32 camera_id
int32 image_width
int32 image_height
---
string error_msgs
")



(provide :aprilslam/ResetParams "67e0b357504ab95687c65d99ab9947b9")


