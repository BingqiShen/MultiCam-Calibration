;; Auto-generated. Do not edit!


(when (boundp 'aprilslam::MoveState)
  (if (not (find-package "APRILSLAM"))
    (make-package "APRILSLAM"))
  (shadow 'MoveState (find-package "APRILSLAM")))
(unless (find-package "APRILSLAM::MOVESTATE")
  (make-package "APRILSLAM::MOVESTATE"))
(unless (find-package "APRILSLAM::MOVESTATEREQUEST")
  (make-package "APRILSLAM::MOVESTATEREQUEST"))
(unless (find-package "APRILSLAM::MOVESTATERESPONSE")
  (make-package "APRILSLAM::MOVESTATERESPONSE"))

(in-package "ROS")





(defclass aprilslam::MoveStateRequest
  :super ros::object
  :slots (_state ))

(defmethod aprilslam::MoveStateRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aprilslam::MoveStateResponse
  :super ros::object
  :slots (_error_message ))

(defmethod aprilslam::MoveStateResponse
  (:init
   (&key
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _error_message (string __error_message))
   self)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aprilslam::MoveState
  :super ros::object
  :slots ())

(setf (get aprilslam::MoveState :md5sum-) "943495411fa218d7df068416952dd94f")
(setf (get aprilslam::MoveState :datatype-) "aprilslam/MoveState")
(setf (get aprilslam::MoveState :request) aprilslam::MoveStateRequest)
(setf (get aprilslam::MoveState :response) aprilslam::MoveStateResponse)

(defmethod aprilslam::MoveStateRequest
  (:response () (instance aprilslam::MoveStateResponse :init)))

(setf (get aprilslam::MoveStateRequest :md5sum-) "943495411fa218d7df068416952dd94f")
(setf (get aprilslam::MoveStateRequest :datatype-) "aprilslam/MoveStateRequest")
(setf (get aprilslam::MoveStateRequest :definition-)
      "int32 state
---
string error_message

")

(setf (get aprilslam::MoveStateResponse :md5sum-) "943495411fa218d7df068416952dd94f")
(setf (get aprilslam::MoveStateResponse :datatype-) "aprilslam/MoveStateResponse")
(setf (get aprilslam::MoveStateResponse :definition-)
      "int32 state
---
string error_message

")



(provide :aprilslam/MoveState "943495411fa218d7df068416952dd94f")


