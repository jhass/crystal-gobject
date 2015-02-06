@[Link("cairo-gobject")]
lib Libcairo

  ###########################################
  ##    Structs
  ###########################################

  struct Context # struct
  end

  struct Surface # struct
  end

  struct Matrix # struct
  end

  struct Pattern # struct
  end

  struct Region # struct
  end

  struct FontOptions # struct
  end

  struct FontType # struct
  end

  struct FontFace # struct
  end

  struct ScaledFont # struct
  end

  struct Path # struct
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

  enum Content
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
