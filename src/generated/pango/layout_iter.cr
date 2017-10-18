module Pango
  class LayoutIter
    include GObject::WrappedType

    @pango_layout_iter : LibPango::LayoutIter*?
    def initialize(@pango_layout_iter : LibPango::LayoutIter*)
    end

    def to_unsafe
      @pango_layout_iter.not_nil!
    end

    def at_last_line
      __return_value = LibPango.layout_iter_at_last_line(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def copy
      __return_value = LibPango.layout_iter_copy(to_unsafe.as(LibPango::LayoutIter*))
      Pango::LayoutIter.new(__return_value) if __return_value
    end

    def free
      LibPango.layout_iter_free(to_unsafe.as(LibPango::LayoutIter*))
      nil
    end

    def baseline
      __return_value = LibPango.layout_iter_get_baseline(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def char_extents(logical_rect)
      LibPango.layout_iter_get_char_extents(to_unsafe.as(LibPango::LayoutIter*), logical_rect)
      nil
    end

    def cluster_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_cluster_extents(to_unsafe.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def index
      __return_value = LibPango.layout_iter_get_index(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def layout
      __return_value = LibPango.layout_iter_get_layout(to_unsafe.as(LibPango::LayoutIter*))
      Pango::Layout.new(__return_value)
    end

    def layout_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_layout_extents(to_unsafe.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def line
      __return_value = LibPango.layout_iter_get_line(to_unsafe.as(LibPango::LayoutIter*))
      Pango::LayoutLine.new(__return_value)
    end

    def line_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_line_extents(to_unsafe.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def line_readonly
      __return_value = LibPango.layout_iter_get_line_readonly(to_unsafe.as(LibPango::LayoutIter*))
      Pango::LayoutLine.new(__return_value)
    end

    def line_yrange(y0, y1)
      LibPango.layout_iter_get_line_yrange(to_unsafe.as(LibPango::LayoutIter*), y0, y1)
      nil
    end

    def run
      __return_value = LibPango.layout_iter_get_run(to_unsafe.as(LibPango::LayoutIter*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def run_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_run_extents(to_unsafe.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def run_readonly
      __return_value = LibPango.layout_iter_get_run_readonly(to_unsafe.as(LibPango::LayoutIter*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def next_char
      __return_value = LibPango.layout_iter_next_char(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_cluster
      __return_value = LibPango.layout_iter_next_cluster(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_line
      __return_value = LibPango.layout_iter_next_line(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_run
      __return_value = LibPango.layout_iter_next_run(to_unsafe.as(LibPango::LayoutIter*))
      __return_value
    end

  end
end

