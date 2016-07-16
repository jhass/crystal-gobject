module Pango
  class LayoutLine
    include GObject::WrappedType

    def self.new(layout : Pango::Layout|Nil = nil, start_index : Int32|Nil = nil, length : Int32|Nil = nil, runs : Void*|Nil = nil, is_paragraph_start : UInt32|Nil = nil, resolved_dir : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibPango::LayoutLine*)).tap do |object|
        object.layout = layout unless layout.nil?
        object.start_index = start_index unless start_index.nil?
        object.length = length unless length.nil?
        object.runs = runs unless runs.nil?
        object.is_paragraph_start = is_paragraph_start unless is_paragraph_start.nil?
        object.resolved_dir = resolved_dir unless resolved_dir.nil?
      end
    end

    @pango_layout_line : LibPango::LayoutLine*?
    def initialize(@pango_layout_line : LibPango::LayoutLine*)
    end

    def to_unsafe
      @pango_layout_line.not_nil!.as(Void*)
    end

    def extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_line_get_extents(to_unsafe.as(LibPango::LayoutLine*), ink_rect, logical_rect)
      __return_value
    end

    def pixel_extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_line_get_pixel_extents(to_unsafe.as(LibPango::LayoutLine*), ink_rect, logical_rect)
      __return_value
    end

    def x_ranges(start_index, end_index, ranges, n_ranges)
      __return_value = LibPango.layout_line_get_x_ranges(to_unsafe.as(LibPango::LayoutLine*), Int32.new(start_index), Int32.new(end_index), ranges, n_ranges)
      __return_value
    end

    def index_to_x(index, trailing, x_pos)
      __return_value = LibPango.layout_line_index_to_x(to_unsafe.as(LibPango::LayoutLine*), Int32.new(index), trailing, x_pos)
      __return_value
    end

    def ref
      __return_value = LibPango.layout_line_ref(to_unsafe.as(LibPango::LayoutLine*))
      Pango::LayoutLine.new(__return_value)
    end

    def unref
      __return_value = LibPango.layout_line_unref(to_unsafe.as(LibPango::LayoutLine*))
      __return_value
    end

    def x_to_index(x_pos, index, trailing)
      __return_value = LibPango.layout_line_x_to_index(to_unsafe.as(LibPango::LayoutLine*), Int32.new(x_pos), index, trailing)
      __return_value
    end

    def layout
      Pango::Layout.new((to_unsafe.as(LibPango::LayoutLine*).value.layout))
    end

    def layout=(value : Pango::Layout)
      to_unsafe.as(LibPango::LayoutLine*).value.layout = value.to_unsafe.as(LibPango::Layout*)
    end

    def start_index
      (to_unsafe.as(LibPango::LayoutLine*).value.start_index)
    end

    def start_index=(value : Int32)
      to_unsafe.as(LibPango::LayoutLine*).value.start_index = Int32.new(value)
    end

    def length
      (to_unsafe.as(LibPango::LayoutLine*).value.length)
    end

    def length=(value : Int32)
      to_unsafe.as(LibPango::LayoutLine*).value.length = Int32.new(value)
    end

    def runs
      (to_unsafe.as(LibPango::LayoutLine*).value.runs)
    end

    def runs=(value : Void*)
      to_unsafe.as(LibPango::LayoutLine*).value.runs = value
    end

    def is_paragraph_start
      (to_unsafe.as(LibPango::LayoutLine*).value.is_paragraph_start)
    end

    def is_paragraph_start=(value : UInt32)
      to_unsafe.as(LibPango::LayoutLine*).value.is_paragraph_start = UInt32.new(value)
    end

    def resolved_dir
      (to_unsafe.as(LibPango::LayoutLine*).value.resolved_dir)
    end

    def resolved_dir=(value : UInt32)
      to_unsafe.as(LibPango::LayoutLine*).value.resolved_dir = UInt32.new(value)
    end

  end
end

