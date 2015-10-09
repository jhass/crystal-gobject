module Pango
  class Layout < GObject::Object
    def initialize @pango_layout
    end

    def to_unsafe
      @pango_layout.not_nil!
    end

    def self.new_internal(context)
      __return_value = LibPango.layout_new((context.to_unsafe as LibPango::Context*))
      Pango::Layout.new(__return_value)
    end

    def context_changed
      __return_value = LibPango.layout_context_changed((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def copy
      __return_value = LibPango.layout_copy((to_unsafe as LibPango::Layout*))
      Pango::Layout.new(__return_value)
    end

    def alignment
      __return_value = LibPango.layout_get_alignment((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def attributes
      __return_value = LibPango.layout_get_attributes((to_unsafe as LibPango::Layout*))
      Pango::AttrList.new(__return_value)
    end

    def auto_dir
      __return_value = LibPango.layout_get_auto_dir((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def baseline
      __return_value = LibPango.layout_get_baseline((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def character_count
      __return_value = LibPango.layout_get_character_count((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def context
      __return_value = LibPango.layout_get_context((to_unsafe as LibPango::Layout*))
      Pango::Context.new(__return_value)
    end

    def cursor_pos(index, strong_pos, weak_pos)
      __return_value = LibPango.layout_get_cursor_pos((to_unsafe as LibPango::Layout*), Int32.new(index), strong_pos, weak_pos)
      __return_value
    end

    def ellipsize
      __return_value = LibPango.layout_get_ellipsize((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_get_extents((to_unsafe as LibPango::Layout*), ink_rect, logical_rect)
      __return_value
    end

    def font_description
      __return_value = LibPango.layout_get_font_description((to_unsafe as LibPango::Layout*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def height
      __return_value = LibPango.layout_get_height((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def indent
      __return_value = LibPango.layout_get_indent((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def iter
      __return_value = LibPango.layout_get_iter((to_unsafe as LibPango::Layout*))
      Pango::LayoutIter.new(__return_value)
    end

    def justify
      __return_value = LibPango.layout_get_justify((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def line(line)
      __return_value = LibPango.layout_get_line((to_unsafe as LibPango::Layout*), Int32.new(line))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def line_count
      __return_value = LibPango.layout_get_line_count((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def line_readonly(line)
      __return_value = LibPango.layout_get_line_readonly((to_unsafe as LibPango::Layout*), Int32.new(line))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def lines
      __return_value = LibPango.layout_get_lines((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def lines_readonly
      __return_value = LibPango.layout_get_lines_readonly((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def log_attrs(attrs, n_attrs)
      __return_value = LibPango.layout_get_log_attrs((to_unsafe as LibPango::Layout*), attrs, Int32.new(n_attrs))
      __return_value
    end

    def log_attrs_readonly(n_attrs)
      __return_value = LibPango.layout_get_log_attrs_readonly((to_unsafe as LibPango::Layout*), Int32.new(n_attrs))
      PointerIterator.new(__return_value) {|__item_43| Pango::LogAttr.new(__item_43) }
    end

    def pixel_extents(ink_rect, logical_rect)
      __return_value = LibPango.layout_get_pixel_extents((to_unsafe as LibPango::Layout*), ink_rect, logical_rect)
      __return_value
    end

    def pixel_size(width, height)
      __return_value = LibPango.layout_get_pixel_size((to_unsafe as LibPango::Layout*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def serial
      __return_value = LibPango.layout_get_serial((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def single_paragraph_mode
      __return_value = LibPango.layout_get_single_paragraph_mode((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def size(width, height)
      __return_value = LibPango.layout_get_size((to_unsafe as LibPango::Layout*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def spacing
      __return_value = LibPango.layout_get_spacing((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def tabs
      __return_value = LibPango.layout_get_tabs((to_unsafe as LibPango::Layout*))
      Pango::TabArray.new(__return_value) if __return_value
    end

    def text
      __return_value = LibPango.layout_get_text((to_unsafe as LibPango::Layout*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unknown_glyphs_count
      __return_value = LibPango.layout_get_unknown_glyphs_count((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def width
      __return_value = LibPango.layout_get_width((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def wrap
      __return_value = LibPango.layout_get_wrap((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def index_to_line_x(index, trailing, line, x_pos)
      __return_value = LibPango.layout_index_to_line_x((to_unsafe as LibPango::Layout*), Int32.new(index), trailing, Int32.new(line), Int32.new(x_pos))
      __return_value
    end

    def index_to_pos(index, pos)
      __return_value = LibPango.layout_index_to_pos((to_unsafe as LibPango::Layout*), Int32.new(index), pos)
      __return_value
    end

    def ellipsized?
      __return_value = LibPango.layout_is_ellipsized((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def wrapped?
      __return_value = LibPango.layout_is_wrapped((to_unsafe as LibPango::Layout*))
      __return_value
    end

    def move_cursor_visually(strong, old_index, old_trailing, direction, new_index, new_trailing)
      __return_value = LibPango.layout_move_cursor_visually((to_unsafe as LibPango::Layout*), strong, Int32.new(old_index), Int32.new(old_trailing), Int32.new(direction), Int32.new(new_index), Int32.new(new_trailing))
      __return_value
    end

    def alignment=(alignment)
      __return_value = LibPango.layout_set_alignment((to_unsafe as LibPango::Layout*), alignment)
      __return_value
    end

    def attributes=(attrs)
      __return_value = LibPango.layout_set_attributes((to_unsafe as LibPango::Layout*), attrs && (attrs.to_unsafe as LibPango::AttrList*))
      __return_value
    end

    def auto_dir=(auto_dir)
      __return_value = LibPango.layout_set_auto_dir((to_unsafe as LibPango::Layout*), auto_dir)
      __return_value
    end

    def ellipsize=(ellipsize)
      __return_value = LibPango.layout_set_ellipsize((to_unsafe as LibPango::Layout*), ellipsize)
      __return_value
    end

    def font_description=(desc)
      __return_value = LibPango.layout_set_font_description((to_unsafe as LibPango::Layout*), desc && (desc.to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def height=(height)
      __return_value = LibPango.layout_set_height((to_unsafe as LibPango::Layout*), Int32.new(height))
      __return_value
    end

    def indent=(indent)
      __return_value = LibPango.layout_set_indent((to_unsafe as LibPango::Layout*), Int32.new(indent))
      __return_value
    end

    def justify=(justify)
      __return_value = LibPango.layout_set_justify((to_unsafe as LibPango::Layout*), justify)
      __return_value
    end

    def set_markup(markup, length)
      __return_value = LibPango.layout_set_markup((to_unsafe as LibPango::Layout*), markup, Int32.new(length))
      __return_value
    end

    def set_markup_with_accel(markup, length, accel_marker, accel_char)
      __return_value = LibPango.layout_set_markup_with_accel((to_unsafe as LibPango::Layout*), markup, Int32.new(length), UInt8.new(accel_marker), UInt8.new(accel_char))
      __return_value
    end

    def single_paragraph_mode=(setting)
      __return_value = LibPango.layout_set_single_paragraph_mode((to_unsafe as LibPango::Layout*), setting)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibPango.layout_set_spacing((to_unsafe as LibPango::Layout*), Int32.new(spacing))
      __return_value
    end

    def tabs=(tabs)
      __return_value = LibPango.layout_set_tabs((to_unsafe as LibPango::Layout*), tabs && (tabs.to_unsafe as LibPango::TabArray*))
      __return_value
    end

    def set_text(text, length)
      __return_value = LibPango.layout_set_text((to_unsafe as LibPango::Layout*), text, Int32.new(length))
      __return_value
    end

    def width=(width)
      __return_value = LibPango.layout_set_width((to_unsafe as LibPango::Layout*), Int32.new(width))
      __return_value
    end

    def wrap=(wrap)
      __return_value = LibPango.layout_set_wrap((to_unsafe as LibPango::Layout*), wrap)
      __return_value
    end

    def xy_to_index(x, y, index, trailing)
      __return_value = LibPango.layout_xy_to_index((to_unsafe as LibPango::Layout*), Int32.new(x), Int32.new(y), Int32.new(index), Int32.new(trailing))
      __return_value
    end

  end
end

