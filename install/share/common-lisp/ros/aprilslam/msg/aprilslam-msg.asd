
(cl:in-package :asdf)

(defsystem "aprilslam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Apriltag" :depends-on ("_package_Apriltag"))
    (:file "_package_Apriltag" :depends-on ("_package"))
    (:file "Apriltags" :depends-on ("_package_Apriltags"))
    (:file "_package_Apriltags" :depends-on ("_package"))
  ))