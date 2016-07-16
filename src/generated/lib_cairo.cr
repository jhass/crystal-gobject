@[Link("cairo-gobject")]
lib LibCairo

  ###########################################
  ##    Structs
  ###########################################

  struct Context # struct
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

  struct FontType # struct
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

  struct RectangleInt # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end


  ###########################################
  ##    Enums
  ###########################################

  enum Content : UInt32
    ZERO_NONE = 0
    COLOR = 4096
    ALPHA = 8192
    COLOR_ALPHA = 12288
  end


  ###########################################
  ##    Functions
  ###########################################

  fun image_surface_create = cairo_image_surface_create() : Void
end

