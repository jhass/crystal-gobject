@[Link("cairo-gobject")]
lib LibCairo

  ###########################################
  ##    Structs
  ###########################################

  struct Context # struct
    _data : UInt8[0]
  end

  struct Device # struct
    _data : UInt8[0]
  end

  struct Surface # struct
    _data : UInt8[0]
  end

  struct Matrix # struct
    _data : UInt8[0]
  end

  struct Pattern # struct
    _data : UInt8[0]
  end

  struct Region # struct
    _data : UInt8[0]
  end

  struct FontOptions # struct
    _data : UInt8[0]
  end

  struct FontFace # struct
    _data : UInt8[0]
  end

  struct ScaledFont # struct
    _data : UInt8[0]
  end

  struct Path # struct
    _data : UInt8[0]
  end

  struct Rectangle # struct
    x : Float64
    y : Float64
    width : Float64
    height : Float64
  end

  struct RectangleInt # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end


  ###########################################
  ##    Enums
  ###########################################

  enum Status : UInt32
    ZERO_NONE = 0
    SUCCESS = 0
    NO_MEMORY = 1
    INVALID_RESTORE = 2
    INVALID_POP_GROUP = 3
    NO_CURRENT_POINT = 4
    INVALID_MATRIX = 5
    INVALID_STATUS = 6
    NULL_POINTER = 7
    INVALID_STRING = 8
    INVALID_PATH_DATA = 9
    READ_ERROR = 10
    WRITE_ERROR = 11
    SURFACE_FINISHED = 12
    SURFACE_TYPE_MISMATCH = 13
    PATTERN_TYPE_MISMATCH = 14
    INVALID_CONTENT = 15
    INVALID_FORMAT = 16
    INVALID_VISUAL = 17
    FILE_NOT_FOUND = 18
    INVALID_DASH = 19
    INVALID_DSC_COMMENT = 20
    INVALID_INDEX = 21
    CLIP_NOT_REPRESENTABLE = 22
    TEMP_FILE_ERROR = 23
    INVALID_STRIDE = 24
    FONT_TYPE_MISMATCH = 25
    USER_FONT_IMMUTABLE = 26
    USER_FONT_ERROR = 27
    NEGATIVE_COUNT = 28
    INVALID_CLUSTERS = 29
    INVALID_SLANT = 30
    INVALID_WEIGHT = 31
    INVALID_SIZE = 32
    USER_FONT_NOT_IMPLEMENTED = 33
    DEVICE_TYPE_MISMATCH = 34
    DEVICE_ERROR = 35
    INVALID_MESH_CONSTRUCTION = 36
    DEVICE_FINISHED = 37
    JBIG2_GLOBAL_MISSING = 38
  end

  enum Content : UInt32
    ZERO_NONE = 0
    COLOR = 4096
    ALPHA = 8192
    COLOR_ALPHA = 12288
  end

  enum Operator : UInt32
    ZERO_NONE = 0
    CLEAR = 0
    SOURCE = 1
    OVER = 2
    IN = 3
    OUT = 4
    ATOP = 5
    DEST = 6
    DEST_OVER = 7
    DEST_IN = 8
    DEST_OUT = 9
    DEST_ATOP = 10
    XOR = 11
    ADD = 12
    SATURATE = 13
    MULTIPLY = 14
    SCREEN = 15
    OVERLAY = 16
    DARKEN = 17
    LIGHTEN = 18
    COLOR_DODGE = 19
    COLOR_BURN = 20
    HARD_LIGHT = 21
    SOFT_LIGHT = 22
    DIFFERENCE = 23
    EXCLUSION = 24
    HSL_HUE = 25
    HSL_SATURATION = 26
    HSL_COLOR = 27
    HSL_LUMINOSITY = 28
  end

  enum Antialias : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    NONE = 1
    GRAY = 2
    SUBPIXEL = 3
    FAST = 4
    GOOD = 5
    BEST = 6
  end

  enum FillRule : UInt32
    ZERO_NONE = 0
    WINDING = 0
    EVEN_ODD = 1
  end

  enum LineCap : UInt32
    ZERO_NONE = 0
    BUTT = 0
    ROUND = 1
    SQUARE = 2
  end

  enum LineJoin : UInt32
    ZERO_NONE = 0
    MITER = 0
    ROUND = 1
    BEVEL = 2
  end

  enum TextClusterFlags : UInt32
    ZERO_NONE = 0
    BACKWARD = 1
  end

  enum FontSlant : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    ITALIC = 1
    OBLIQUE = 2
  end

  enum FontWeight : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    BOLD = 1
  end

  enum SubpixelOrder : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    RGB = 1
    BGR = 2
    VRGB = 3
    VBGR = 4
  end

  enum HintStyle : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    NONE = 1
    SLIGHT = 2
    MEDIUM = 3
    FULL = 4
  end

  enum HintMetrics : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    OFF = 1
    ON = 2
  end

  enum FontType : UInt32
    ZERO_NONE = 0
    TOY = 0
    FT = 1
    WIN32 = 2
    QUARTZ = 3
    USER = 4
  end

  enum PathDataType : UInt32
    ZERO_NONE = 0
    MOVE_TO = 0
    LINE_TO = 1
    CURVE_TO = 2
    CLOSE_PATH = 3
  end

  enum DeviceType : Int32
    ZERO_NONE = 0
    DRM = 0
    GL = 1
    SCRIPT = 2
    XCB = 3
    XLIB = 4
    XML = 5
    COGL = 6
    WIN32 = 7
    INVALID = -1
  end

  enum SurfaceType : UInt32
    ZERO_NONE = 0
    IMAGE = 0
    PDF = 1
    PS = 2
    XLIB = 3
    XCB = 4
    GLITZ = 5
    QUARTZ = 6
    WIN32 = 7
    BEOS = 8
    DIRECTFB = 9
    SVG = 10
    OS2 = 11
    WIN32_PRINTING = 12
    QUARTZ_IMAGE = 13
    SCRIPT = 14
    QT = 15
    RECORDING = 16
    VG = 17
    GL = 18
    DRM = 19
    TEE = 20
    XML = 21
    SKIA = 22
    SUBSURFACE = 23
    COGL = 24
  end

  enum Format : Int32
    ZERO_NONE = 0
    INVALID = -1
    ARGB32 = 0
    RGB24 = 1
    A8 = 2
    A1 = 3
    RGB16_565 = 4
    RGB30 = 5
  end

  enum PatternType : UInt32
    ZERO_NONE = 0
    SOLID = 0
    SURFACE = 1
    LINEAR = 2
    RADIAL = 3
    MESH = 4
    RASTER_SOURCE = 5
  end

  enum Extend : UInt32
    ZERO_NONE = 0
    NONE = 0
    REPEAT = 1
    REFLECT = 2
    PAD = 3
  end

  enum Filter : UInt32
    ZERO_NONE = 0
    FAST = 0
    GOOD = 1
    BEST = 2
    NEAREST = 3
    BILINEAR = 4
    GAUSSIAN = 5
  end

  enum RegionOverlap : UInt32
    ZERO_NONE = 0
    IN = 0
    OUT = 1
    PART = 2
  end


  ###########################################
  ##    Functions
  ###########################################

  fun image_surface_create = cairo_image_surface_create() : Void
end

