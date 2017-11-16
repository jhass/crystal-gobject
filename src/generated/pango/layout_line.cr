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

    @pointer : Void*
    def initialize(pointer : LibPango::LayoutLine*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::LayoutLine*)
    end

    def extents(ink_rect, logical_rect)
      LibPango.layout_line_get_extents(@pointer.as(LibPango::LayoutLine*), ink_rect, logical_rect)
      nil
    end

    def pixel_extents(ink_rect, logical_rect)
      LibPango.layout_line_get_pixel_extents(@pointer.as(LibPango::LayoutLine*), ink_rect, logical_rect)
      nil
    end

    def x_ranges(start_index, end_index, ranges, n_ranges)
      LibPango.layout_line_get_x_ranges(@pointer.as(LibPango::LayoutLine*), Int32.new(start_index), Int32.new(end_index), ranges, n_ranges)
      nil
    end

    def index_to_x(index, trailing, x_pos)
      LibPango.layout_line_index_to_x(@pointer.as(LibPango::LayoutLine*), Int32.new(index), trailing, x_pos)
      nil
    end

    def ref
      __return_value = LibPango.layout_line_ref(@pointer.as(LibPango::LayoutLine*))
      Pango::LayoutLine.new(__return_value)
    end

    def unref
      LibPango.layout_line_unref(@pointer.as(LibPango::LayoutLine*))
      nil
    end

    def x_to_index(x_pos, index, trailing)
      __return_value = LibPango.layout_line_x_to_index(@pointer.as(LibPango::LayoutLine*), Int32.new(x_pos), index, trailing)
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
      GLib::SListIterator(Pango::GlyphItem, LibPango::GlyphItem*).new(GLib::SList.new((to_unsafe.as(LibPango::LayoutLine*).value.runs).as(LibGLib::SList*)))
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

