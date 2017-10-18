module Pango
  class Layout < GObject::Object
    @pango_layout : LibPango::Layout*?
    def initialize(@pango_layout : LibPango::Layout*)
    end

    def to_unsafe
      @pango_layout.not_nil!
    end

    def self.new(context) : self
      __return_value = LibPango.layout_new(context.to_unsafe.as(LibPango::Context*))
      cast Pango::Layout.new(__return_value)
    end

    def context_changed
      LibPango.layout_context_changed(to_unsafe.as(LibPango::Layout*))
      nil
    end

    def copy
      __return_value = LibPango.layout_copy(to_unsafe.as(LibPango::Layout*))
      Pango::Layout.new(__return_value)
    end

    def alignment
      __return_value = LibPango.layout_get_alignment(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def attributes
      __return_value = LibPango.layout_get_attributes(to_unsafe.as(LibPango::Layout*))
      Pango::AttrList.new(__return_value)
    end

    def auto_dir
      __return_value = LibPango.layout_get_auto_dir(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def baseline
      __return_value = LibPango.layout_get_baseline(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def character_count
      __return_value = LibPango.layout_get_character_count(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def context
      __return_value = LibPango.layout_get_context(to_unsafe.as(LibPango::Layout*))
      Pango::Context.new(__return_value)
    end

    def cursor_pos(index, strong_pos, weak_pos)
      LibPango.layout_get_cursor_pos(to_unsafe.as(LibPango::Layout*), Int32.new(index), strong_pos, weak_pos)
      nil
    end

    def ellipsize
      __return_value = LibPango.layout_get_ellipsize(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def extents(ink_rect, logical_rect)
      LibPango.layout_get_extents(to_unsafe.as(LibPango::Layout*), ink_rect, logical_rect)
      nil
    end

    def font_description
      __return_value = LibPango.layout_get_font_description(to_unsafe.as(LibPango::Layout*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def height
      __return_value = LibPango.layout_get_height(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def indent
      __return_value = LibPango.layout_get_indent(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def iter
      __return_value = LibPango.layout_get_iter(to_unsafe.as(LibPango::Layout*))
      Pango::LayoutIter.new(__return_value)
    end

    def justify
      __return_value = LibPango.layout_get_justify(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def line(line)
      __return_value = LibPango.layout_get_line(to_unsafe.as(LibPango::Layout*), Int32.new(line))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def line_count
      __return_value = LibPango.layout_get_line_count(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def line_readonly(line)
      __return_value = LibPango.layout_get_line_readonly(to_unsafe.as(LibPango::Layout*), Int32.new(line))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def lines
      __return_value = LibPango.layout_get_lines(to_unsafe.as(LibPango::Layout*))
      GLib::SListIterator(Pango::LayoutLine, LibPango::LayoutLine*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def lines_readonly
      __return_value = LibPango.layout_get_lines_readonly(to_unsafe.as(LibPango::Layout*))
      GLib::SListIterator(Pango::LayoutLine, LibPango::LayoutLine*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def log_attrs(attrs, n_attrs)
      LibPango.layout_get_log_attrs(to_unsafe.as(LibPango::Layout*), attrs, n_attrs)
      nil
    end

    def log_attrs_readonly(n_attrs)
      __return_value = LibPango.layout_get_log_attrs_readonly(to_unsafe.as(LibPango::Layout*), n_attrs)
      PointerIterator.new(__return_value) {|__item| Pango::LogAttr.new(__item) }
    end

    def pixel_extents(ink_rect, logical_rect)
      LibPango.layout_get_pixel_extents(to_unsafe.as(LibPango::Layout*), ink_rect, logical_rect)
      nil
    end

    def pixel_size(width, height)
      LibPango.layout_get_pixel_size(to_unsafe.as(LibPango::Layout*), width, height)
      nil
    end

    def serial
      __return_value = LibPango.layout_get_serial(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def single_paragraph_mode
      __return_value = LibPango.layout_get_single_paragraph_mode(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def size(width, height)
      LibPango.layout_get_size(to_unsafe.as(LibPango::Layout*), width, height)
      nil
    end

    def spacing
      __return_value = LibPango.layout_get_spacing(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def tabs
      __return_value = LibPango.layout_get_tabs(to_unsafe.as(LibPango::Layout*))
      Pango::TabArray.new(__return_value) if __return_value
    end

    def text
      __return_value = LibPango.layout_get_text(to_unsafe.as(LibPango::Layout*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unknown_glyphs_count
      __return_value = LibPango.layout_get_unknown_glyphs_count(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def width
      __return_value = LibPango.layout_get_width(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def wrap
      __return_value = LibPango.layout_get_wrap(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def index_to_line_x(index, trailing, line, x_pos)
      LibPango.layout_index_to_line_x(to_unsafe.as(LibPango::Layout*), Int32.new(index), trailing, line, x_pos)
      nil
    end

    def index_to_pos(index, pos)
      LibPango.layout_index_to_pos(to_unsafe.as(LibPango::Layout*), Int32.new(index), pos)
      nil
    end

    def ellipsized?
      __return_value = LibPango.layout_is_ellipsized(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def wrapped?
      __return_value = LibPango.layout_is_wrapped(to_unsafe.as(LibPango::Layout*))
      __return_value
    end

    def move_cursor_visually(strong, old_index, old_trailing, direction, new_index, new_trailing)
      LibPango.layout_move_cursor_visually(to_unsafe.as(LibPango::Layout*), strong, Int32.new(old_index), Int32.new(old_trailing), Int32.new(direction), new_index, new_trailing)
      nil
    end

    def alignment=(alignment : Pango::Alignment)
      LibPango.layout_set_alignment(to_unsafe.as(LibPango::Layout*), alignment)
      nil
    end

    def attributes=(attrs)
      LibPango.layout_set_attributes(to_unsafe.as(LibPango::Layout*), attrs ? attrs.to_unsafe.as(LibPango::AttrList*) : nil)
      nil
    end

    def auto_dir=(auto_dir)
      LibPango.layout_set_auto_dir(to_unsafe.as(LibPango::Layout*), auto_dir)
      nil
    end

    def ellipsize=(ellipsize : Pango::EllipsizeMode)
      LibPango.layout_set_ellipsize(to_unsafe.as(LibPango::Layout*), ellipsize)
      nil
    end

    def font_description=(desc)
      LibPango.layout_set_font_description(to_unsafe.as(LibPango::Layout*), desc ? desc.to_unsafe.as(LibPango::FontDescription*) : nil)
      nil
    end

    def height=(height)
      LibPango.layout_set_height(to_unsafe.as(LibPango::Layout*), Int32.new(height))
      nil
    end

    def indent=(indent)
      LibPango.layout_set_indent(to_unsafe.as(LibPango::Layout*), Int32.new(indent))
      nil
    end

    def justify=(justify)
      LibPango.layout_set_justify(to_unsafe.as(LibPango::Layout*), justify)
      nil
    end

    def set_markup(markup, length)
      LibPango.layout_set_markup(to_unsafe.as(LibPango::Layout*), markup.to_unsafe, Int32.new(length))
      nil
    end

    def set_markup_with_accel(markup, length, accel_marker, accel_char)
      LibPango.layout_set_markup_with_accel(to_unsafe.as(LibPango::Layout*), markup.to_unsafe, Int32.new(length), UInt8.new(accel_marker), accel_char)
      nil
    end

    def single_paragraph_mode=(setting)
      LibPango.layout_set_single_paragraph_mode(to_unsafe.as(LibPango::Layout*), setting)
      nil
    end

    def spacing=(spacing)
      LibPango.layout_set_spacing(to_unsafe.as(LibPango::Layout*), Int32.new(spacing))
      nil
    end

    def tabs=(tabs)
      LibPango.layout_set_tabs(to_unsafe.as(LibPango::Layout*), tabs ? tabs.to_unsafe.as(LibPango::TabArray*) : nil)
      nil
    end

    def set_text(text, length)
      LibPango.layout_set_text(to_unsafe.as(LibPango::Layout*), text.to_unsafe, Int32.new(length))
      nil
    end

    def width=(width)
      LibPango.layout_set_width(to_unsafe.as(LibPango::Layout*), Int32.new(width))
      nil
    end

    def wrap=(wrap : Pango::WrapMode)
      LibPango.layout_set_wrap(to_unsafe.as(LibPango::Layout*), wrap)
      nil
    end

    def xy_to_index(x, y, index, trailing)
      __return_value = LibPango.layout_xy_to_index(to_unsafe.as(LibPango::Layout*), Int32.new(x), Int32.new(y), index, trailing)
      __return_value
    end

  end
end

