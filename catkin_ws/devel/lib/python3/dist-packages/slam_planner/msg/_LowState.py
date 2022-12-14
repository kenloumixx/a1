# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from slam_planner/LowState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import slam_planner.msg

class LowState(genpy.Message):
  _md5sum = "d739b5f213dd3e0dc70a1630cf024e14"
  _type = "slam_planner/LowState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 levelFlag
uint16 commVersion
uint16 robotID
uint32 SN 
uint8 bandWidth
IMU imu
MotorState[20] motorState
int16[4] footForce              # force sensors
int16[4] footForceEst           # force sensors
uint32 tick                     # reference real-time from motion controller (unit: us)
uint8[40] wirelessRemote        # wireless commands
uint32 reserve
uint32 crc


Cartesian[4] eeForceRaw
Cartesian[4] eeForce          #it's a 1-DOF force infact, but we use 3-DOF here just for visualization 
Cartesian position            # will delete
Cartesian velocity            # will delete
Cartesian velocity_w            # will delete

================================================================================
MSG: slam_planner/IMU
float32[4] quaternion
float32[3] gyroscope
float32[3] accelerometer
float32[3] rpy
int8 temperature
================================================================================
MSG: slam_planner/MotorState
uint8 mode           # motor current mode 
float32 q            # motor current position（rad）
float32 dq           # motor current speed（rad/s）
float32 ddq          # motor current speed（rad/s）
float32 tauEst       # current estimated output torque（N*m）
float32 q_raw        # motor current position（rad）
float32 dq_raw       # motor current speed（rad/s）
float32 ddq_raw      # motor current speed（rad/s）
int8 temperature     # motor temperature（slow conduction of temperature leads to lag）
uint32[2] reserve
================================================================================
MSG: slam_planner/Cartesian
float32 x
float32 y
float32 z"""
  __slots__ = ['levelFlag','commVersion','robotID','SN','bandWidth','imu','motorState','footForce','footForceEst','tick','wirelessRemote','reserve','crc','eeForceRaw','eeForce','position','velocity','velocity_w']
  _slot_types = ['uint8','uint16','uint16','uint32','uint8','slam_planner/IMU','slam_planner/MotorState[20]','int16[4]','int16[4]','uint32','uint8[40]','uint32','uint32','slam_planner/Cartesian[4]','slam_planner/Cartesian[4]','slam_planner/Cartesian','slam_planner/Cartesian','slam_planner/Cartesian']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       levelFlag,commVersion,robotID,SN,bandWidth,imu,motorState,footForce,footForceEst,tick,wirelessRemote,reserve,crc,eeForceRaw,eeForce,position,velocity,velocity_w

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LowState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.levelFlag is None:
        self.levelFlag = 0
      if self.commVersion is None:
        self.commVersion = 0
      if self.robotID is None:
        self.robotID = 0
      if self.SN is None:
        self.SN = 0
      if self.bandWidth is None:
        self.bandWidth = 0
      if self.imu is None:
        self.imu = slam_planner.msg.IMU()
      if self.motorState is None:
        self.motorState = [slam_planner.msg.MotorState() for _ in range(20)]
      if self.footForce is None:
        self.footForce = [0] * 4
      if self.footForceEst is None:
        self.footForceEst = [0] * 4
      if self.tick is None:
        self.tick = 0
      if self.wirelessRemote is None:
        self.wirelessRemote = b'\0'*40
      if self.reserve is None:
        self.reserve = 0
      if self.crc is None:
        self.crc = 0
      if self.eeForceRaw is None:
        self.eeForceRaw = [slam_planner.msg.Cartesian() for _ in range(4)]
      if self.eeForce is None:
        self.eeForce = [slam_planner.msg.Cartesian() for _ in range(4)]
      if self.position is None:
        self.position = slam_planner.msg.Cartesian()
      if self.velocity is None:
        self.velocity = slam_planner.msg.Cartesian()
      if self.velocity_w is None:
        self.velocity_w = slam_planner.msg.Cartesian()
    else:
      self.levelFlag = 0
      self.commVersion = 0
      self.robotID = 0
      self.SN = 0
      self.bandWidth = 0
      self.imu = slam_planner.msg.IMU()
      self.motorState = [slam_planner.msg.MotorState() for _ in range(20)]
      self.footForce = [0] * 4
      self.footForceEst = [0] * 4
      self.tick = 0
      self.wirelessRemote = b'\0'*40
      self.reserve = 0
      self.crc = 0
      self.eeForceRaw = [slam_planner.msg.Cartesian() for _ in range(4)]
      self.eeForce = [slam_planner.msg.Cartesian() for _ in range(4)]
      self.position = slam_planner.msg.Cartesian()
      self.velocity = slam_planner.msg.Cartesian()
      self.velocity_w = slam_planner.msg.Cartesian()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B2HIB().pack(_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth))
      buff.write(_get_struct_4f().pack(*self.imu.quaternion))
      buff.write(_get_struct_3f().pack(*self.imu.gyroscope))
      buff.write(_get_struct_3f().pack(*self.imu.accelerometer))
      buff.write(_get_struct_3f().pack(*self.imu.rpy))
      _x = self.imu.temperature
      buff.write(_get_struct_b().pack(_x))
      if len(self.motorState) != 20:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (20, len(self.motorState), 'self.motorState')))
      for val1 in self.motorState:
        _x = val1
        buff.write(_get_struct_B7fb().pack(_x.mode, _x.q, _x.dq, _x.ddq, _x.tauEst, _x.q_raw, _x.dq_raw, _x.ddq_raw, _x.temperature))
        buff.write(_get_struct_2I().pack(*val1.reserve))
      buff.write(_get_struct_4h().pack(*self.footForce))
      buff.write(_get_struct_4h().pack(*self.footForceEst))
      _x = self.tick
      buff.write(_get_struct_I().pack(_x))
      _x = self.wirelessRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.reserve, _x.crc))
      if len(self.eeForceRaw) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.eeForceRaw), 'self.eeForceRaw')))
      for val1 in self.eeForceRaw:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      if len(self.eeForce) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.eeForce), 'self.eeForce')))
      for val1 in self.eeForce:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_9f().pack(_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.velocity_w.x, _x.velocity_w.y, _x.velocity_w.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.imu is None:
        self.imu = slam_planner.msg.IMU()
      if self.motorState is None:
        self.motorState = None
      if self.eeForceRaw is None:
        self.eeForceRaw = None
      if self.eeForce is None:
        self.eeForce = None
      if self.position is None:
        self.position = slam_planner.msg.Cartesian()
      if self.velocity is None:
        self.velocity = slam_planner.msg.Cartesian()
      if self.velocity_w is None:
        self.velocity_w = slam_planner.msg.Cartesian()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth,) = _get_struct_B2HIB().unpack(str[start:end])
      start = end
      end += 16
      self.imu.quaternion = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 12
      self.imu.gyroscope = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.imu.accelerometer = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.imu.rpy = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 1
      (self.imu.temperature,) = _get_struct_b().unpack(str[start:end])
      self.motorState = []
      for i in range(0, 20):
        val1 = slam_planner.msg.MotorState()
        _x = val1
        start = end
        end += 30
        (_x.mode, _x.q, _x.dq, _x.ddq, _x.tauEst, _x.q_raw, _x.dq_raw, _x.ddq_raw, _x.temperature,) = _get_struct_B7fb().unpack(str[start:end])
        start = end
        end += 8
        val1.reserve = _get_struct_2I().unpack(str[start:end])
        self.motorState.append(val1)
      start = end
      end += 8
      self.footForce = _get_struct_4h().unpack(str[start:end])
      start = end
      end += 8
      self.footForceEst = _get_struct_4h().unpack(str[start:end])
      start = end
      end += 4
      (self.tick,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 40
      self.wirelessRemote = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.reserve, _x.crc,) = _get_struct_2I().unpack(str[start:end])
      self.eeForceRaw = []
      for i in range(0, 4):
        val1 = slam_planner.msg.Cartesian()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.eeForceRaw.append(val1)
      self.eeForce = []
      for i in range(0, 4):
        val1 = slam_planner.msg.Cartesian()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.eeForce.append(val1)
      _x = self
      start = end
      end += 36
      (_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.velocity_w.x, _x.velocity_w.y, _x.velocity_w.z,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B2HIB().pack(_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth))
      buff.write(self.imu.quaternion.tostring())
      buff.write(self.imu.gyroscope.tostring())
      buff.write(self.imu.accelerometer.tostring())
      buff.write(self.imu.rpy.tostring())
      _x = self.imu.temperature
      buff.write(_get_struct_b().pack(_x))
      if len(self.motorState) != 20:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (20, len(self.motorState), 'self.motorState')))
      for val1 in self.motorState:
        _x = val1
        buff.write(_get_struct_B7fb().pack(_x.mode, _x.q, _x.dq, _x.ddq, _x.tauEst, _x.q_raw, _x.dq_raw, _x.ddq_raw, _x.temperature))
        buff.write(val1.reserve.tostring())
      buff.write(self.footForce.tostring())
      buff.write(self.footForceEst.tostring())
      _x = self.tick
      buff.write(_get_struct_I().pack(_x))
      _x = self.wirelessRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.reserve, _x.crc))
      if len(self.eeForceRaw) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.eeForceRaw), 'self.eeForceRaw')))
      for val1 in self.eeForceRaw:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      if len(self.eeForce) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.eeForce), 'self.eeForce')))
      for val1 in self.eeForce:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_9f().pack(_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.velocity_w.x, _x.velocity_w.y, _x.velocity_w.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.imu is None:
        self.imu = slam_planner.msg.IMU()
      if self.motorState is None:
        self.motorState = None
      if self.eeForceRaw is None:
        self.eeForceRaw = None
      if self.eeForce is None:
        self.eeForce = None
      if self.position is None:
        self.position = slam_planner.msg.Cartesian()
      if self.velocity is None:
        self.velocity = slam_planner.msg.Cartesian()
      if self.velocity_w is None:
        self.velocity_w = slam_planner.msg.Cartesian()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth,) = _get_struct_B2HIB().unpack(str[start:end])
      start = end
      end += 16
      self.imu.quaternion = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 12
      self.imu.gyroscope = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.imu.accelerometer = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.imu.rpy = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 1
      (self.imu.temperature,) = _get_struct_b().unpack(str[start:end])
      self.motorState = []
      for i in range(0, 20):
        val1 = slam_planner.msg.MotorState()
        _x = val1
        start = end
        end += 30
        (_x.mode, _x.q, _x.dq, _x.ddq, _x.tauEst, _x.q_raw, _x.dq_raw, _x.ddq_raw, _x.temperature,) = _get_struct_B7fb().unpack(str[start:end])
        start = end
        end += 8
        val1.reserve = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=2)
        self.motorState.append(val1)
      start = end
      end += 8
      self.footForce = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=4)
      start = end
      end += 8
      self.footForceEst = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=4)
      start = end
      end += 4
      (self.tick,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 40
      self.wirelessRemote = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.reserve, _x.crc,) = _get_struct_2I().unpack(str[start:end])
      self.eeForceRaw = []
      for i in range(0, 4):
        val1 = slam_planner.msg.Cartesian()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.eeForceRaw.append(val1)
      self.eeForce = []
      for i in range(0, 4):
        val1 = slam_planner.msg.Cartesian()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.eeForce.append(val1)
      _x = self
      start = end
      end += 36
      (_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.velocity_w.x, _x.velocity_w.y, _x.velocity_w.z,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_40B = None
def _get_struct_40B():
    global _struct_40B
    if _struct_40B is None:
        _struct_40B = struct.Struct("<40B")
    return _struct_40B
_struct_40s = None
def _get_struct_40s():
    global _struct_40s
    if _struct_40s is None:
        _struct_40s = struct.Struct("<40s")
    return _struct_40s
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_4h = None
def _get_struct_4h():
    global _struct_4h
    if _struct_4h is None:
        _struct_4h = struct.Struct("<4h")
    return _struct_4h
_struct_9f = None
def _get_struct_9f():
    global _struct_9f
    if _struct_9f is None:
        _struct_9f = struct.Struct("<9f")
    return _struct_9f
_struct_B2HIB = None
def _get_struct_B2HIB():
    global _struct_B2HIB
    if _struct_B2HIB is None:
        _struct_B2HIB = struct.Struct("<B2HIB")
    return _struct_B2HIB
_struct_B7fb = None
def _get_struct_B7fb():
    global _struct_B7fb
    if _struct_B7fb is None:
        _struct_B7fb = struct.Struct("<B7fb")
    return _struct_B7fb
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
