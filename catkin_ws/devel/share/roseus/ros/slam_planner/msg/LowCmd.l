;; Auto-generated. Do not edit!


(when (boundp 'slam_planner::LowCmd)
  (if (not (find-package "SLAM_PLANNER"))
    (make-package "SLAM_PLANNER"))
  (shadow 'LowCmd (find-package "SLAM_PLANNER")))
(unless (find-package "SLAM_PLANNER::LOWCMD")
  (make-package "SLAM_PLANNER::LOWCMD"))

(in-package "ROS")
;;//! \htmlinclude LowCmd.msg.html


(defclass slam_planner::LowCmd
  :super ros::object
  :slots (_levelFlag _commVersion _robotID _SN _bandWidth _motorCmd _led _wirelessRemote _reserve _crc _ff ))

(defmethod slam_planner::LowCmd
  (:init
   (&key
    ((:levelFlag __levelFlag) 0)
    ((:commVersion __commVersion) 0)
    ((:robotID __robotID) 0)
    ((:SN __SN) 0)
    ((:bandWidth __bandWidth) 0)
    ((:motorCmd __motorCmd) (let (r) (dotimes (i 20) (push (instance slam_planner::MotorCmd :init) r)) r))
    ((:led __led) (let (r) (dotimes (i 4) (push (instance slam_planner::LED :init) r)) r))
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:reserve __reserve) 0)
    ((:crc __crc) 0)
    ((:ff __ff) (let (r) (dotimes (i 4) (push (instance slam_planner::Cartesian :init) r)) r))
    )
   (send-super :init)
   (setq _levelFlag (round __levelFlag))
   (setq _commVersion (round __commVersion))
   (setq _robotID (round __robotID))
   (setq _SN (round __SN))
   (setq _bandWidth (round __bandWidth))
   (setq _motorCmd __motorCmd)
   (setq _led __led)
   (setq _wirelessRemote __wirelessRemote)
   (setq _reserve (round __reserve))
   (setq _crc (round __crc))
   (setq _ff __ff)
   self)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:commVersion
   (&optional __commVersion)
   (if __commVersion (setq _commVersion __commVersion)) _commVersion)
  (:robotID
   (&optional __robotID)
   (if __robotID (setq _robotID __robotID)) _robotID)
  (:SN
   (&optional __SN)
   (if __SN (setq _SN __SN)) _SN)
  (:bandWidth
   (&optional __bandWidth)
   (if __bandWidth (setq _bandWidth __bandWidth)) _bandWidth)
  (:motorCmd
   (&rest __motorCmd)
   (if (keywordp (car __motorCmd))
       (send* _motorCmd __motorCmd)
     (progn
       (if __motorCmd (setq _motorCmd (car __motorCmd)))
       _motorCmd)))
  (:led
   (&rest __led)
   (if (keywordp (car __led))
       (send* _led __led)
     (progn
       (if __led (setq _led (car __led)))
       _led)))
  (:wirelessRemote
   (&optional __wirelessRemote)
   (if __wirelessRemote (setq _wirelessRemote __wirelessRemote)) _wirelessRemote)
  (:reserve
   (&optional __reserve)
   (if __reserve (setq _reserve __reserve)) _reserve)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:ff
   (&rest __ff)
   (if (keywordp (car __ff))
       (send* _ff __ff)
     (progn
       (if __ff (setq _ff (car __ff)))
       _ff)))
  (:serialization-length
   ()
   (+
    ;; uint8 _levelFlag
    1
    ;; uint16 _commVersion
    2
    ;; uint16 _robotID
    2
    ;; uint32 _SN
    4
    ;; uint8 _bandWidth
    1
    ;; slam_planner/MotorCmd[20] _motorCmd
    (apply #'+ (send-all _motorCmd :serialization-length))
    ;; slam_planner/LED[4] _led
    (apply #'+ (send-all _led :serialization-length))
    ;; uint8[40] _wirelessRemote
    (* 1    40)
    ;; uint32 _reserve
    4
    ;; uint32 _crc
    4
    ;; slam_planner/Cartesian[4] _ff
    (apply #'+ (send-all _ff :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; uint16 _commVersion
       (write-word _commVersion s)
     ;; uint16 _robotID
       (write-word _robotID s)
     ;; uint32 _SN
       (write-long _SN s)
     ;; uint8 _bandWidth
       (write-byte _bandWidth s)
     ;; slam_planner/MotorCmd[20] _motorCmd
     (dolist (elem _motorCmd)
       (send elem :serialize s)
       )
     ;; slam_planner/LED[4] _led
     (dolist (elem _led)
       (send elem :serialize s)
       )
     ;; uint8[40] _wirelessRemote
     (princ _wirelessRemote s)
     ;; uint32 _reserve
       (write-long _reserve s)
     ;; uint32 _crc
       (write-long _crc s)
     ;; slam_planner/Cartesian[4] _ff
     (dolist (elem _ff)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _commVersion
     (setq _commVersion (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _robotID
     (setq _robotID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _SN
     (setq _SN (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _bandWidth
     (setq _bandWidth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; slam_planner/MotorCmd[20] _motorCmd
   (dotimes (i 20)
     (send (elt _motorCmd i) :deserialize buf ptr-) (incf ptr- (send (elt _motorCmd i) :serialization-length))
     )
   ;; slam_planner/LED[4] _led
   (dotimes (i 4)
     (send (elt _led i) :deserialize buf ptr-) (incf ptr- (send (elt _led i) :serialization-length))
     )
   ;; uint8[40] _wirelessRemote
   (setq _wirelessRemote (make-array 40 :element-type :char))
   (replace _wirelessRemote buf :start2 ptr-) (incf ptr- 40)
   ;; uint32 _reserve
     (setq _reserve (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; slam_planner/Cartesian[4] _ff
   (dotimes (i 4)
     (send (elt _ff i) :deserialize buf ptr-) (incf ptr- (send (elt _ff i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get slam_planner::LowCmd :md5sum-) "357432b2562edd0a8e89b9c9f5fc4821")
(setf (get slam_planner::LowCmd :datatype-) "slam_planner/LowCmd")
(setf (get slam_planner::LowCmd :definition-)
      "uint8 levelFlag
uint16 commVersion
uint16 robotID
uint32 SN
uint8 bandWidth
MotorCmd[20] motorCmd
LED[4] led
uint8[40] wirelessRemote
uint32 reserve
uint32 crc

Cartesian[4] ff               # will delete
================================================================================
MSG: slam_planner/MotorCmd
uint8 mode           # motor target mode
float32 q            # motor target position
float32 dq           # motor target velocity
float32 tau          # motor target torque
float32 Kp           # motor spring stiffness coefficient
float32 Kd           # motor damper coefficient
uint32[3] reserve    # motor target torque
================================================================================
MSG: slam_planner/LED
uint8 r
uint8 g
uint8 b
================================================================================
MSG: slam_planner/Cartesian
float32 x
float32 y
float32 z
")



(provide :slam_planner/LowCmd "357432b2562edd0a8e89b9c9f5fc4821")


