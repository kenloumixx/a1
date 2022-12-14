# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from slamware_ros_sdk/MoveToRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import slamware_ros_sdk.msg

class MoveToRequest(genpy.Message):
  _md5sum = "6d7d1ef4f0dba270fe0e38669f83096c"
  _type = "slamware_ros_sdk/MoveToRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
geometry_msgs/Point location
MoveOptions options
float32 yaw

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: slamware_ros_sdk/MoveOptions

MoveOptionFlag opt_flags
OptionalFlt64 speed_ratio

================================================================================
MSG: slamware_ros_sdk/MoveOptionFlag

uint32 NONE=0
uint32 APPENDING=1
uint32 MILESTONE=2
uint32 NO_SMOOTH=4
uint32 KEY_POINTS=8
uint32 PRECISE=16
uint32 WITH_YAW=32
uint32 RETURN_UNREACHABLE_DIRECTLY=64
uint32 KEY_POINTS_WITH_OA=128

uint32 flags

================================================================================
MSG: slamware_ros_sdk/OptionalFlt64

bool is_valid
float64 value
"""
  __slots__ = ['location','options','yaw']
  _slot_types = ['geometry_msgs/Point','slamware_ros_sdk/MoveOptions','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       location,options,yaw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveToRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.location is None:
        self.location = geometry_msgs.msg.Point()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.MoveOptions()
      if self.yaw is None:
        self.yaw = 0.
    else:
      self.location = geometry_msgs.msg.Point()
      self.options = slamware_ros_sdk.msg.MoveOptions()
      self.yaw = 0.

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
      buff.write(_get_struct_3dIBdf().pack(_x.location.x, _x.location.y, _x.location.z, _x.options.opt_flags.flags, _x.options.speed_ratio.is_valid, _x.options.speed_ratio.value, _x.yaw))
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
      if self.location is None:
        self.location = geometry_msgs.msg.Point()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.MoveOptions()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.location.x, _x.location.y, _x.location.z, _x.options.opt_flags.flags, _x.options.speed_ratio.is_valid, _x.options.speed_ratio.value, _x.yaw,) = _get_struct_3dIBdf().unpack(str[start:end])
      self.options.speed_ratio.is_valid = bool(self.options.speed_ratio.is_valid)
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
      buff.write(_get_struct_3dIBdf().pack(_x.location.x, _x.location.y, _x.location.z, _x.options.opt_flags.flags, _x.options.speed_ratio.is_valid, _x.options.speed_ratio.value, _x.yaw))
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
      if self.location is None:
        self.location = geometry_msgs.msg.Point()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.MoveOptions()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.location.x, _x.location.y, _x.location.z, _x.options.opt_flags.flags, _x.options.speed_ratio.is_valid, _x.options.speed_ratio.value, _x.yaw,) = _get_struct_3dIBdf().unpack(str[start:end])
      self.options.speed_ratio.is_valid = bool(self.options.speed_ratio.is_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3dIBdf = None
def _get_struct_3dIBdf():
    global _struct_3dIBdf
    if _struct_3dIBdf is None:
        _struct_3dIBdf = struct.Struct("<3dIBdf")
    return _struct_3dIBdf
