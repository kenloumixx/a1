# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from slam_planner/MotorCmd.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MotorCmd(genpy.Message):
  _md5sum = "bbb3b7d91319c3a1b99055f0149ba221"
  _type = "slam_planner/MotorCmd"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 mode           # motor target mode
float32 q            # motor target position
float32 dq           # motor target velocity
float32 tau          # motor target torque
float32 Kp           # motor spring stiffness coefficient
float32 Kd           # motor damper coefficient
uint32[3] reserve    # motor target torque"""
  __slots__ = ['mode','q','dq','tau','Kp','Kd','reserve']
  _slot_types = ['uint8','float32','float32','float32','float32','float32','uint32[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mode,q,dq,tau,Kp,Kd,reserve

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorCmd, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.mode is None:
        self.mode = 0
      if self.q is None:
        self.q = 0.
      if self.dq is None:
        self.dq = 0.
      if self.tau is None:
        self.tau = 0.
      if self.Kp is None:
        self.Kp = 0.
      if self.Kd is None:
        self.Kd = 0.
      if self.reserve is None:
        self.reserve = [0] * 3
    else:
      self.mode = 0
      self.q = 0.
      self.dq = 0.
      self.tau = 0.
      self.Kp = 0.
      self.Kd = 0.
      self.reserve = [0] * 3

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
      buff.write(_get_struct_B5f().pack(_x.mode, _x.q, _x.dq, _x.tau, _x.Kp, _x.Kd))
      buff.write(_get_struct_3I().pack(*self.reserve))
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
      end = 0
      _x = self
      start = end
      end += 21
      (_x.mode, _x.q, _x.dq, _x.tau, _x.Kp, _x.Kd,) = _get_struct_B5f().unpack(str[start:end])
      start = end
      end += 12
      self.reserve = _get_struct_3I().unpack(str[start:end])
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
      buff.write(_get_struct_B5f().pack(_x.mode, _x.q, _x.dq, _x.tau, _x.Kp, _x.Kd))
      buff.write(self.reserve.tostring())
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
      end = 0
      _x = self
      start = end
      end += 21
      (_x.mode, _x.q, _x.dq, _x.tau, _x.Kp, _x.Kd,) = _get_struct_B5f().unpack(str[start:end])
      start = end
      end += 12
      self.reserve = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B5f = None
def _get_struct_B5f():
    global _struct_B5f
    if _struct_B5f is None:
        _struct_B5f = struct.Struct("<B5f")
    return _struct_B5f
