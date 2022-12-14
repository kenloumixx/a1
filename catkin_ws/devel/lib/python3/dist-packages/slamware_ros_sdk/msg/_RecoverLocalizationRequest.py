# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from slamware_ros_sdk/RecoverLocalizationRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import slamware_ros_sdk.msg

class RecoverLocalizationRequest(genpy.Message):
  _md5sum = "23b8ad43efcddaa451d7f46385bf8b37"
  _type = "slamware_ros_sdk/RecoverLocalizationRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
RectFlt32 area
LocalizationOptions options

================================================================================
MSG: slamware_ros_sdk/RectFlt32

float32 x		# x of position
float32 y		# y of position
float32 w		# width
float32 h		# height

================================================================================
MSG: slamware_ros_sdk/LocalizationOptions

OptionalInt32 max_time_ms
OptionalLocalizationMovement mvmt_type

================================================================================
MSG: slamware_ros_sdk/OptionalInt32

bool is_valid
int32 value

================================================================================
MSG: slamware_ros_sdk/OptionalLocalizationMovement

bool is_valid
LocalizationMovement value

================================================================================
MSG: slamware_ros_sdk/LocalizationMovement

int8 UNKNOWN=-1
int8 NO_MOVE=0
int8 ROTATE_ONLY=1
int8 ANY=2

int8 type
"""
  __slots__ = ['area','options']
  _slot_types = ['slamware_ros_sdk/RectFlt32','slamware_ros_sdk/LocalizationOptions']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       area,options

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RecoverLocalizationRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.area is None:
        self.area = slamware_ros_sdk.msg.RectFlt32()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.LocalizationOptions()
    else:
      self.area = slamware_ros_sdk.msg.RectFlt32()
      self.options = slamware_ros_sdk.msg.LocalizationOptions()

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
      buff.write(_get_struct_4fBiBb().pack(_x.area.x, _x.area.y, _x.area.w, _x.area.h, _x.options.max_time_ms.is_valid, _x.options.max_time_ms.value, _x.options.mvmt_type.is_valid, _x.options.mvmt_type.value.type))
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
      if self.area is None:
        self.area = slamware_ros_sdk.msg.RectFlt32()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.LocalizationOptions()
      end = 0
      _x = self
      start = end
      end += 23
      (_x.area.x, _x.area.y, _x.area.w, _x.area.h, _x.options.max_time_ms.is_valid, _x.options.max_time_ms.value, _x.options.mvmt_type.is_valid, _x.options.mvmt_type.value.type,) = _get_struct_4fBiBb().unpack(str[start:end])
      self.options.max_time_ms.is_valid = bool(self.options.max_time_ms.is_valid)
      self.options.mvmt_type.is_valid = bool(self.options.mvmt_type.is_valid)
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
      buff.write(_get_struct_4fBiBb().pack(_x.area.x, _x.area.y, _x.area.w, _x.area.h, _x.options.max_time_ms.is_valid, _x.options.max_time_ms.value, _x.options.mvmt_type.is_valid, _x.options.mvmt_type.value.type))
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
      if self.area is None:
        self.area = slamware_ros_sdk.msg.RectFlt32()
      if self.options is None:
        self.options = slamware_ros_sdk.msg.LocalizationOptions()
      end = 0
      _x = self
      start = end
      end += 23
      (_x.area.x, _x.area.y, _x.area.w, _x.area.h, _x.options.max_time_ms.is_valid, _x.options.max_time_ms.value, _x.options.mvmt_type.is_valid, _x.options.mvmt_type.value.type,) = _get_struct_4fBiBb().unpack(str[start:end])
      self.options.max_time_ms.is_valid = bool(self.options.max_time_ms.is_valid)
      self.options.mvmt_type.is_valid = bool(self.options.mvmt_type.is_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4fBiBb = None
def _get_struct_4fBiBb():
    global _struct_4fBiBb
    if _struct_4fBiBb is None:
        _struct_4fBiBb = struct.Struct("<4fBiBb")
    return _struct_4fBiBb
