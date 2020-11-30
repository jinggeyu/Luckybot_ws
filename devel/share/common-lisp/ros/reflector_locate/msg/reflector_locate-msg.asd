
(cl:in-package :asdf)

(defsystem "reflector_locate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "reflector_msgs" :depends-on ("_package_reflector_msgs"))
    (:file "_package_reflector_msgs" :depends-on ("_package"))
  ))