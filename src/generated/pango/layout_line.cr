module Pango
  class LayoutLine
    include GObject::WrappedType

    def initialize @pango_layout_line
    end

    def to_unsafe
      @pango_layout_line.not_nil!
    end

    def extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_line_get_extents((to_unsafe as LibPango::LayoutLine*), ink_rect, logical_rect)
      __return_value
    end

    def pixel_extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_line_get_pixel_extents((to_unsafe as LibPango::LayoutLine*), ink_rect, logical_rect)
      __return_value
    end

    def x_ranges(start_index, end_index, ranges, n_ranges)
      __return_value = LibPango.layout_line_get_x_ranges((to_unsafe as LibPango::LayoutLine*), Int32.cast(start_index), Int32.cast(end_index), ranges, Int32.cast(n_ranges))
      __return_value
    end

    def index_to_x(index, trailing, x_pos)
      __return_value = LibPango.layout_line_index_to_x((to_unsafe as LibPango::LayoutLine*), Int32.cast(index), Bool.cast(trailing), Int32.cast(x_pos))
      __return_value
    end

    def ref
      __return_value = LibPango.layout_line_ref((to_unsafe as LibPango::LayoutLine*))
      Pango::LayoutLine.new(__return_value)
    end

    def unref
      __return_value = LibPango.layout_line_unref((to_unsafe as LibPango::LayoutLine*))
      __return_value
    end

    def x_to_index(x_pos, index, trailing)
      __return_value = LibPango.layout_line_x_to_index((to_unsafe as LibPango::LayoutLine*), Int32.cast(x_pos), Int32.cast(index), Int32.cast(trailing))
      __return_value
    end

  end
end

