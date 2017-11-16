module Pango
  class Matrix
    include GObject::WrappedType

    def self.new(xx : Float64|Nil = nil, xy : Float64|Nil = nil, yx : Float64|Nil = nil, yy : Float64|Nil = nil, x0 : Float64|Nil = nil, y0 : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibPango::Matrix*)).tap do |object|
        object.xx = xx unless xx.nil?
        object.xy = xy unless xy.nil?
        object.yx = yx unless yx.nil?
        object.yy = yy unless yy.nil?
        object.x0 = x0 unless x0.nil?
        object.y0 = y0 unless y0.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::Matrix*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Matrix*)
    end

    def concat(new_matrix)
      LibPango.matrix_concat(@pointer.as(LibPango::Matrix*), new_matrix.to_unsafe.as(LibPango::Matrix*))
      nil
    end

    def copy
      __return_value = LibPango.matrix_copy(@pointer.as(LibPango::Matrix*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def free
      LibPango.matrix_free(@pointer.as(LibPango::Matrix*))
      nil
    end

    def font_scale_factor
      __return_value = LibPango.matrix_get_font_scale_factor(@pointer.as(LibPango::Matrix*))
      __return_value
    end

    def font_scale_factors(xscale, yscale)
      LibPango.matrix_get_font_scale_factors(@pointer.as(LibPango::Matrix*), xscale, yscale)
      nil
    end

    def rotate(degrees)
      LibPango.matrix_rotate(@pointer.as(LibPango::Matrix*), Float64.new(degrees))
      nil
    end

    def scale(scale_x, scale_y)
      LibPango.matrix_scale(@pointer.as(LibPango::Matrix*), Float64.new(scale_x), Float64.new(scale_y))
      nil
    end

    def transform_distance(dx, dy)
      LibPango.matrix_transform_distance(@pointer.as(LibPango::Matrix*), dx, dy)
      nil
    end

    def transform_pixel_rectangle(rect)
      LibPango.matrix_transform_pixel_rectangle(@pointer.as(LibPango::Matrix*), rect)
      nil
    end

    def transform_point(x, y)
      LibPango.matrix_transform_point(@pointer.as(LibPango::Matrix*), x, y)
      nil
    end

    def transform_rectangle(rect)
      LibPango.matrix_transform_rectangle(@pointer.as(LibPango::Matrix*), rect)
      nil
    end

    def translate(tx, ty)
      LibPango.matrix_translate(@pointer.as(LibPango::Matrix*), Float64.new(tx), Float64.new(ty))
      nil
    end

    def xx
      (to_unsafe.as(LibPango::Matrix*).value.xx)
    end

    def xx=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.xx = Float64.new(value)
    end

    def xy
      (to_unsafe.as(LibPango::Matrix*).value.xy)
    end

    def xy=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.xy = Float64.new(value)
    end

    def yx
      (to_unsafe.as(LibPango::Matrix*).value.yx)
    end

    def yx=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.yx = Float64.new(value)
    end

    def yy
      (to_unsafe.as(LibPango::Matrix*).value.yy)
    end

    def yy=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.yy = Float64.new(value)
    end

    def x0
      (to_unsafe.as(LibPango::Matrix*).value.x0)
    end

    def x0=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.x0 = Float64.new(value)
    end

    def y0
      (to_unsafe.as(LibPango::Matrix*).value.y0)
    end

    def y0=(value : Float64)
      to_unsafe.as(LibPango::Matrix*).value.y0 = Float64.new(value)
    end

  end
end

