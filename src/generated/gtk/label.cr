require "./misc"

module Gtk
  class Label < Misc
    def initialize @gtk_label
    end

    def to_unsafe
      @gtk_label.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def angle=(__value)
      LibGtk.label_set_angle((to_unsafe as LibGtk::Label*), Float64.cast(__value))
    end

    def attributes=(__value)
      LibGtk.label_set_attributes((to_unsafe as LibGtk::Label*), __value)
    end


    def ellipsize=(__value)
      LibGtk.label_set_ellipsize((to_unsafe as LibGtk::Label*), __value)
    end

    def justify=(__value)
      LibGtk.label_set_justify((to_unsafe as LibGtk::Label*), __value)
    end

    def label=(__value)
      LibGtk.label_set_label((to_unsafe as LibGtk::Label*), __value)
    end

    def lines=(__value)
      LibGtk.label_set_lines((to_unsafe as LibGtk::Label*), Int32.cast(__value))
    end

    def max_width_chars=(__value)
      LibGtk.label_set_max_width_chars((to_unsafe as LibGtk::Label*), Int32.cast(__value))
    end


    def mnemonic_widget=(__value)
      LibGtk.label_set_mnemonic_widget((to_unsafe as LibGtk::Label*), __value)
    end

    def pattern=(__value)
      LibGtk.label_set_pattern((to_unsafe as LibGtk::Label*), __value)
    end

    def selectable=(__value)
      LibGtk.label_set_selectable((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end


    def single_line_mode=(__value)
      LibGtk.label_set_single_line_mode((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end

    def track_visited_links=(__value)
      LibGtk.label_set_track_visited_links((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end

    def use_markup=(__value)
      LibGtk.label_set_use_markup((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end

    def use_underline=(__value)
      LibGtk.label_set_use_underline((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end

    def width_chars=(__value)
      LibGtk.label_set_width_chars((to_unsafe as LibGtk::Label*), Int32.cast(__value))
    end

    def wrap=(__value)
      LibGtk.label_set_wrap((to_unsafe as LibGtk::Label*), Bool.cast(__value))
    end

    def wrap_mode=(__value)
      LibGtk.label_set_wrap_mode((to_unsafe as LibGtk::Label*), __value)
    end

    def self.new_internal(str)
      __return_value = LibGtk.label_new(str)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(str)
      __return_value = LibGtk.label_new_with_mnemonic(str)
      Gtk::Widget.new(__return_value)
    end

    def angle
      __return_value = LibGtk.label_get_angle((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def attributes
      __return_value = LibGtk.label_get_attributes((to_unsafe as LibGtk::Label*))
      Pango::AttrList.new(__return_value)
    end

    def current_uri
      __return_value = LibGtk.label_get_current_uri((to_unsafe as LibGtk::Label*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def ellipsize
      __return_value = LibGtk.label_get_ellipsize((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def justify
      __return_value = LibGtk.label_get_justify((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def label
      __return_value = LibGtk.label_get_label((to_unsafe as LibGtk::Label*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def layout
      __return_value = LibGtk.label_get_layout((to_unsafe as LibGtk::Label*))
      Pango::Layout.new(__return_value)
    end

    def layout_offsets(x, y)
      __return_value = LibGtk.label_get_layout_offsets((to_unsafe as LibGtk::Label*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def line_wrap
      __return_value = LibGtk.label_get_line_wrap((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def line_wrap_mode
      __return_value = LibGtk.label_get_line_wrap_mode((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def lines
      __return_value = LibGtk.label_get_lines((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def max_width_chars
      __return_value = LibGtk.label_get_max_width_chars((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def mnemonic_keyval
      __return_value = LibGtk.label_get_mnemonic_keyval((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def mnemonic_widget
      __return_value = LibGtk.label_get_mnemonic_widget((to_unsafe as LibGtk::Label*))
      Gtk::Widget.new(__return_value)
    end

    def selectable
      __return_value = LibGtk.label_get_selectable((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def selection_bounds(start, end)
      __return_value = LibGtk.label_get_selection_bounds((to_unsafe as LibGtk::Label*), Int32.cast(start), Int32.cast(end))
      __return_value
    end

    def single_line_mode
      __return_value = LibGtk.label_get_single_line_mode((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def text
      __return_value = LibGtk.label_get_text((to_unsafe as LibGtk::Label*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def track_visited_links
      __return_value = LibGtk.label_get_track_visited_links((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def use_markup
      __return_value = LibGtk.label_get_use_markup((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.label_get_use_underline((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def width_chars
      __return_value = LibGtk.label_get_width_chars((to_unsafe as LibGtk::Label*))
      __return_value
    end

    def select_region(start_offset, end_offset)
      __return_value = LibGtk.label_select_region((to_unsafe as LibGtk::Label*), Int32.cast(start_offset), Int32.cast(end_offset))
      __return_value
    end

    def angle=(angle)
      __return_value = LibGtk.label_set_angle((to_unsafe as LibGtk::Label*), Float64.cast(angle))
      __return_value
    end

    def attributes=(attrs)
      __return_value = LibGtk.label_set_attributes((to_unsafe as LibGtk::Label*), (attrs.to_unsafe as LibPango::AttrList*))
      __return_value
    end

    def ellipsize=(mode)
      __return_value = LibGtk.label_set_ellipsize((to_unsafe as LibGtk::Label*), mode)
      __return_value
    end

    def justify=(jtype)
      __return_value = LibGtk.label_set_justify((to_unsafe as LibGtk::Label*), jtype)
      __return_value
    end

    def label=(str)
      __return_value = LibGtk.label_set_label((to_unsafe as LibGtk::Label*), str)
      __return_value
    end

    def line_wrap=(wrap)
      __return_value = LibGtk.label_set_line_wrap((to_unsafe as LibGtk::Label*), Bool.cast(wrap))
      __return_value
    end

    def line_wrap_mode=(wrap_mode)
      __return_value = LibGtk.label_set_line_wrap_mode((to_unsafe as LibGtk::Label*), wrap_mode)
      __return_value
    end

    def lines=(lines)
      __return_value = LibGtk.label_set_lines((to_unsafe as LibGtk::Label*), Int32.cast(lines))
      __return_value
    end

    def markup=(str)
      __return_value = LibGtk.label_set_markup((to_unsafe as LibGtk::Label*), str)
      __return_value
    end

    def markup_with_mnemonic=(str)
      __return_value = LibGtk.label_set_markup_with_mnemonic((to_unsafe as LibGtk::Label*), str)
      __return_value
    end

    def max_width_chars=(n_chars)
      __return_value = LibGtk.label_set_max_width_chars((to_unsafe as LibGtk::Label*), Int32.cast(n_chars))
      __return_value
    end

    def mnemonic_widget=(widget)
      __return_value = LibGtk.label_set_mnemonic_widget((to_unsafe as LibGtk::Label*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def pattern=(pattern)
      __return_value = LibGtk.label_set_pattern((to_unsafe as LibGtk::Label*), pattern)
      __return_value
    end

    def selectable=(setting)
      __return_value = LibGtk.label_set_selectable((to_unsafe as LibGtk::Label*), Bool.cast(setting))
      __return_value
    end

    def single_line_mode=(single_line_mode)
      __return_value = LibGtk.label_set_single_line_mode((to_unsafe as LibGtk::Label*), Bool.cast(single_line_mode))
      __return_value
    end

    def text=(str)
      __return_value = LibGtk.label_set_text((to_unsafe as LibGtk::Label*), str)
      __return_value
    end

    def text_with_mnemonic=(str)
      __return_value = LibGtk.label_set_text_with_mnemonic((to_unsafe as LibGtk::Label*), str)
      __return_value
    end

    def track_visited_links=(track_links)
      __return_value = LibGtk.label_set_track_visited_links((to_unsafe as LibGtk::Label*), Bool.cast(track_links))
      __return_value
    end

    def use_markup=(setting)
      __return_value = LibGtk.label_set_use_markup((to_unsafe as LibGtk::Label*), Bool.cast(setting))
      __return_value
    end

    def use_underline=(setting)
      __return_value = LibGtk.label_set_use_underline((to_unsafe as LibGtk::Label*), Bool.cast(setting))
      __return_value
    end

    def width_chars=(n_chars)
      __return_value = LibGtk.label_set_width_chars((to_unsafe as LibGtk::Label*), Int32.cast(n_chars))
      __return_value
    end

  end
end

