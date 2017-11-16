module Pango
  class LayoutIter
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::LayoutIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::LayoutIter*)
    end

    def at_last_line
      __return_value = LibPango.layout_iter_at_last_line(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def copy
      __return_value = LibPango.layout_iter_copy(@pointer.as(LibPango::LayoutIter*))
      Pango::LayoutIter.new(__return_value) if __return_value
    end

    def free
      LibPango.layout_iter_free(@pointer.as(LibPango::LayoutIter*))
      nil
    end

    def baseline
      __return_value = LibPango.layout_iter_get_baseline(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def char_extents(logical_rect)
      LibPango.layout_iter_get_char_extents(@pointer.as(LibPango::LayoutIter*), logical_rect)
      nil
    end

    def cluster_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_cluster_extents(@pointer.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def index
      __return_value = LibPango.layout_iter_get_index(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def layout
      __return_value = LibPango.layout_iter_get_layout(@pointer.as(LibPango::LayoutIter*))
      Pango::Layout.new(__return_value)
    end

    def layout_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_layout_extents(@pointer.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def line
      __return_value = LibPango.layout_iter_get_line(@pointer.as(LibPango::LayoutIter*))
      Pango::LayoutLine.new(__return_value)
    end

    def line_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_line_extents(@pointer.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def line_readonly
      __return_value = LibPango.layout_iter_get_line_readonly(@pointer.as(LibPango::LayoutIter*))
      Pango::LayoutLine.new(__return_value)
    end

    def line_yrange(y0, y1)
      LibPango.layout_iter_get_line_yrange(@pointer.as(LibPango::LayoutIter*), y0, y1)
      nil
    end

    def run
      __return_value = LibPango.layout_iter_get_run(@pointer.as(LibPango::LayoutIter*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def run_extents(ink_rect, logical_rect)
      LibPango.layout_iter_get_run_extents(@pointer.as(LibPango::LayoutIter*), ink_rect, logical_rect)
      nil
    end

    def run_readonly
      __return_value = LibPango.layout_iter_get_run_readonly(@pointer.as(LibPango::LayoutIter*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def next_char
      __return_value = LibPango.layout_iter_next_char(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_cluster
      __return_value = LibPango.layout_iter_next_cluster(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_line
      __return_value = LibPango.layout_iter_next_line(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

    def next_run
      __return_value = LibPango.layout_iter_next_run(@pointer.as(LibPango::LayoutIter*))
      __return_value
    end

  end
end

