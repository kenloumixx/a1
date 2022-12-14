# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from slam_planner/HighCmd.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import slam_planner.msg

class HighCmd(genpy.Message):
  _md5sum = "1a655499a3f64905db59ceed65ca774a"
  _type = "slam_planner/HighCmd"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 levelFlag
uint16 commVersion
uint16 robotID
uint32 SN
uint8 bandWidth
uint8 mode
float32 forwardSpeed
float32 sideSpeed
float32 rotateSpeed	
float32 bodyHeight
float32 footRaiseHeight
float32 yaw
float32 pitch
float32 roll
LED[4] led
uint8[40] wirelessRemote
uint8[40] AppRemote
uint32 reserve
int32 crc
================================================================================
MSG: slam_planner/LED
uint8 r
uint8 g
uint8 b"""
  __slots__ = ['levelFlag','commVersion','robotID','SN','bandWidth','mode','forwardSpeed','sideSpeed','rotateSpeed','bodyHeight','footRaiseHeight','yaw','pitch','roll','led','wirelessRemote','AppRemote','reserve','crc']
  _slot_types = ['uint8','uint16','uint16','uint32','uint8','uint8','float32','float32','float32','float32','float32','float32','float32','float32','slam_planner/LED[4]','uint8[40]','uint8[40]','uint32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       levelFlag,commVersion,robotID,SN,bandWidth,mode,forwardSpeed,sideSpeed,rotateSpeed,bodyHeight,footRaiseHeight,yaw,pitch,roll,led,wirelessRemote,AppRemote,reserve,crc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HighCmd, self).__init__(*args, **kwds)
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
      if self.mode is None:
        self.mode = 0
      if self.forwardSpeed is None:
        self.forwardSpeed = 0.
      if self.sideSpeed is None:
        self.sideSpeed = 0.
      if self.rotateSpeed is None:
        self.rotateSpeed = 0.
      if self.bodyHeight is None:
        self.bodyHeight = 0.
      if self.footRaiseHeight is None:
        self.footRaiseHeight = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.roll is None:
        self.roll = 0.
      if self.led is None:
        self.led = [slam_planner.msg.LED() for _ in range(4)]
      if self.wirelessRemote is None:
        self.wirelessRemote = b'\0'*40
      if self.AppRemote is None:
        self.AppRemote = b'\0'*40
      if self.reserve is None:
        self.reserve = 0
      if self.crc is None:
        self.crc = 0
    else:
      self.levelFlag = 0
      self.commVersion = 0
      self.robotID = 0
      self.SN = 0
      self.bandWidth = 0
      self.mode = 0
      self.forwardSpeed = 0.
      self.sideSpeed = 0.
      self.rotateSpeed = 0.
      self.bodyHeight = 0.
      self.footRaiseHeight = 0.
      self.yaw = 0.
      self.pitch = 0.
      self.roll = 0.
      self.led = [slam_planner.msg.LED() for _ in range(4)]
      self.wirelessRemote = b'\0'*40
      self.AppRemote = b'\0'*40
      self.reserve = 0
      self.crc = 0

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
      buff.write(_get_struct_B2HI2B8f().pack(_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth, _x.mode, _x.forwardSpeed, _x.sideSpeed, _x.rotateSpeed, _x.bodyHeight, _x.footRaiseHeight, _x.yaw, _x.pitch, _x.roll))
      if len(self.led) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.led), 'self.led')))
      for val1 in self.led:
        _x = val1
        buff.write(_get_struct_3B().pack(_x.r, _x.g, _x.b))
      _x = self.wirelessRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self.AppRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self
      buff.write(_get_struct_Ii().pack(_x.reserve, _x.crc))
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
      if self.led is None:
        self.led = None
      end = 0
      _x = self
      start = end
      end += 43
      (_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth, _x.mode, _x.forwardSpeed, _x.sideSpeed, _x.rotateSpeed, _x.bodyHeight, _x.footRaiseHeight, _x.yaw, _x.pitch, _x.roll,) = _get_struct_B2HI2B8f().unpack(str[start:end])
      self.led = []
      for i in range(0, 4):
        val1 = slam_planner.msg.LED()
        _x = val1
        start = end
        end += 3
        (_x.r, _x.g, _x.b,) = _get_struct_3B().unpack(str[start:end])
        self.led.append(val1)
      start = end
      end += 40
      self.wirelessRemote = str[start:end]
      start = end
      end += 40
      self.AppRemote = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.reserve, _x.crc,) = _get_struct_Ii().unpack(str[start:end])
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
      buff.write(_get_struct_B2HI2B8f().pack(_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth, _x.mode, _x.forwardSpeed, _x.sideSpeed, _x.rotateSpeed, _x.bodyHeight, _x.footRaiseHeight, _x.yaw, _x.pitch, _x.roll))
      if len(self.led) != 4:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (4, len(self.led), 'self.led')))
      for val1 in self.led:
        _x = val1
        buff.write(_get_struct_3B().pack(_x.r, _x.g, _x.b))
      _x = self.wirelessRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self.AppRemote
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_40B().pack(*_x))
      else:
        buff.write(_get_struct_40s().pack(_x))
      _x = self
      buff.write(_get_struct_Ii().pack(_x.reserve, _x.crc))
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
      if self.led is None:
        self.led = None
      end = 0
      _x = self
      start = end
      end += 43
      (_x.levelFlag, _x.commVersion, _x.robotID, _x.SN, _x.bandWidth, _x.mode, _x.forwardSpeed, _x.sideSpeed, _x.rotateSpeed, _x.bodyHeight, _x.footRaiseHeight, _x.yaw, _x.pitch, _x.roll,) = _get_struct_B2HI2B8f().unpack(str[start:end])
      self.led = []
      for i in range(0, 4):
        val1 = slam_planner.msg.LED()
        _x = val1
        start = end
        end += 3
        (_x.r, _x.g, _x.b,) = _get_struct_3B().unpack(str[start:end])
        self.led.append(val1)
      start = end
      end += 40
      self.wirelessRemote = str[start:end]
      start = end
      end += 40
      self.AppRemote = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.reserve, _x.crc,) = _get_struct_Ii().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
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
_struct_B2HI2B8f = None
def _get_struct_B2HI2B8f():
    global _struct_B2HI2B8f
    if _struct_B2HI2B8f is None:
        _struct_B2HI2B8f = struct.Struct("<B2HI2B8f")
    return _struct_B2HI2B8f
_struct_Ii = None
def _get_struct_Ii():
    global _struct_Ii
    if _struct_Ii is None:
        _struct_Ii = struct.Struct("<Ii")
    return _struct_Ii
