; Auto-generated. Do not edit!


(cl:in-package reflector_locate-msg)


;//! \htmlinclude reflector_msgs.msg.html

(cl:defclass <reflector_msgs> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (ref_pose
    :reader ref_pose
    :initarg :ref_pose
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass reflector_msgs (<reflector_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reflector_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reflector_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflector_locate-msg:<reflector_msgs> is deprecated: use reflector_locate-msg:reflector_msgs instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <reflector_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflector_locate-msg:id-val is deprecated.  Use reflector_locate-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'ref_pose-val :lambda-list '(m))
(cl:defmethod ref_pose-val ((m <reflector_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflector_locate-msg:ref_pose-val is deprecated.  Use reflector_locate-msg:ref_pose instead.")
  (ref_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reflector_msgs>) ostream)
  "Serializes a message object of type '<reflector_msgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ref_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ref_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reflector_msgs>) istream)
  "Deserializes a message object of type '<reflector_msgs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ref_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ref_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reflector_msgs>)))
  "Returns string type for a message object of type '<reflector_msgs>"
  "reflector_locate/reflector_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reflector_msgs)))
  "Returns string type for a message object of type 'reflector_msgs"
  "reflector_locate/reflector_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reflector_msgs>)))
  "Returns md5sum for a message object of type '<reflector_msgs>"
  "8ffbf8bb0ea508bbc2abd2bd6aa4aeda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reflector_msgs)))
  "Returns md5sum for a message object of type 'reflector_msgs"
  "8ffbf8bb0ea508bbc2abd2bd6aa4aeda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reflector_msgs>)))
  "Returns full string definition for message of type '<reflector_msgs>"
  (cl:format cl:nil "########################################~%# Messages~%########################################~%uint8 id ~%geometry_msgs/Point[] ref_pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reflector_msgs)))
  "Returns full string definition for message of type 'reflector_msgs"
  (cl:format cl:nil "########################################~%# Messages~%########################################~%uint8 id ~%geometry_msgs/Point[] ref_pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reflector_msgs>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ref_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reflector_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'reflector_msgs
    (cl:cons ':id (id msg))
    (cl:cons ':ref_pose (ref_pose msg))
))
