
(cl:in-package :asdf)

(defsystem "aprilslam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveState" :depends-on ("_package_MoveState"))
    (:file "_package_MoveState" :depends-on ("_package"))
    (:file "ResetParams" :depends-on ("_package_ResetParams"))
    (:file "_package_ResetParams" :depends-on ("_package"))
  ))