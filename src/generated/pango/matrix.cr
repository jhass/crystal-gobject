module Pango
  class Matrix
    include GObject::WrappedType
    def initialize @pango_matrix
    end

    def to_unsafe
      @pango_matrix.not_nil!
    end

    def concat(new_matrix)
      __return_value = LibPango.matrix_concat((to_unsafe as LibPango::Matrix*), (new_matrix.to_unsafe as LibPango::Matrix*))
      __return_value
    end

    def copy
      __return_value = LibPango.matrix_copy((to_unsafe as LibPango::Matrix*))
      Pango::Matrix.new(__return_value)
    end

    def free
      __return_value = LibPango.matrix_free((to_unsafe as LibPango::Matrix*))
      __return_value
    end

    def font_scale_factor
      __return_value = LibPango.matrix_get_font_scale_factor((to_unsafe as LibPango::Matrix*))
      __return_value
    end

    def rotate(degrees)
      __return_value = LibPango.matrix_rotate((to_unsafe as LibPango::Matrix*), Float64.cast(degrees))
      __return_value
    end

    def scale(scale_x, scale_y)
      __return_value = LibPango.matrix_scale((to_unsafe as LibPango::Matrix*), Float64.cast(scale_x), Float64.cast(scale_y))
      __return_value
    end

    def transform_distance(dx, dy)
      __return_value = LibPango.matrix_transform_distance((to_unsafe as LibPango::Matrix*), Float64.cast(dx), Float64.cast(dy))
      __return_value
    end

    def transform_pixel_rectangle(rect)
      __return_value = LibPango.matrix_transform_pixel_rectangle((to_unsafe as LibPango::Matrix*), rect)
      __return_value
    end

    def transform_point(x, y)
      __return_value = LibPango.matrix_transform_point((to_unsafe as LibPango::Matrix*), Float64.cast(x), Float64.cast(y))
      __return_value
    end

    def transform_rectangle(rect)
      __return_value = LibPango.matrix_transform_rectangle((to_unsafe as LibPango::Matrix*), rect)
      __return_value
    end

    def translate(tx, ty)
      __return_value = LibPango.matrix_translate((to_unsafe as LibPango::Matrix*), Float64.cast(tx), Float64.cast(ty))
      __return_value
    end

  end
end

