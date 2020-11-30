;; Auto-generated. Do not edit!


(when (boundp 'reflector_locate::reflector_msgs)
  (if (not (find-package "REFLECTOR_LOCATE"))
    (make-package "REFLECTOR_LOCATE"))
  (shadow 'reflector_msgs (find-package "REFLECTOR_LOCATE")))
(unless (find-package "REFLECTOR_LOCATE::REFLECTOR_MSGS")
  (make-package "REFLECTOR_LOCATE::REFLECTOR_MSGS"))

(in-package "ROS")
;;//! \htmlinclude reflector_msgs.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass reflector_locate::reflector_msgs
  :super ros::object
  :slots (_id _ref_pose ))

(defmethod reflector_locate::reflector_msgs
  (:init
   (&key
    ((:id __id) 0)
    ((:ref_pose __ref_pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _ref_pose __ref_pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:ref_pose
   (&rest __ref_pose)
   (if (keywordp (car __ref_pose))
       (send* _ref_pose __ref_pose)
     (progn
       (if __ref_pose (setq _ref_pose (car __ref_pose)))
       _ref_pose)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; geometry_msgs/Point[] _ref_pose
    (apply #'+ (send-all _ref_pose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; geometry_msgs/Point[] _ref_pose
     (write-long (length _ref_pose) s)
     (dolist (elem _ref_pose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point[] _ref_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _ref_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get reflector_locate::reflector_msgs :md5sum-) "8ffbf8bb0ea508bbc2abd2bd6aa4aeda")
(setf (get reflector_locate::reflector_msgs :datatype-) "reflector_locate/reflector_msgs")
(setf (get reflector_locate::reflector_msgs :definition-)
      "########################################
# Messages
########################################
uint8 id 
geometry_msgs/Point[] ref_pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :reflector_locate/reflector_msgs "8ffbf8bb0ea508bbc2abd2bd6aa4aeda")


