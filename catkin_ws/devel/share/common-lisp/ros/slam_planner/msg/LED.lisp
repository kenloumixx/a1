; Auto-generated. Do not edit!


(cl:in-package slam_planner-msg)


;//! \htmlinclude LED.msg.html

(cl:defclass <LED> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LED (<LED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_planner-msg:<LED> is deprecated: use slam_planner-msg:LED instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_planner-msg:r-val is deprecated.  Use slam_planner-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_planner-msg:g-val is deprecated.  Use slam_planner-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <LED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_planner-msg:b-val is deprecated.  Use slam_planner-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LED>) ostream)
  "Serializes a message object of type '<LED>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LED>) istream)
  "Deserializes a message object of type '<LED>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LED>)))
  "Returns string type for a message object of type '<LED>"
  "slam_planner/LED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LED)))
  "Returns string type for a message object of type 'LED"
  "slam_planner/LED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LED>)))
  "Returns md5sum for a message object of type '<LED>"
  "353891e354491c51aabe32df673fb446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LED)))
  "Returns md5sum for a message object of type 'LED"
  "353891e354491c51aabe32df673fb446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LED>)))
  "Returns full string definition for message of type '<LED>"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LED)))
  "Returns full string definition for message of type 'LED"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LED>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LED>))
  "Converts a ROS message object to a list"
  (cl:list 'LED
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
