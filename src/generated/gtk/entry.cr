require "./widget"

module Gtk
  class Entry < Widget
    def initialize @gtk_entry
    end

    def to_unsafe
      @gtk_entry.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements Editable

















































    def self.new_internal
      __return_value = LibGtk.entry_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_buffer(buffer)
      __return_value = LibGtk.entry_new_with_buffer((buffer.to_unsafe as LibGtk::EntryBuffer*))
      Gtk::Widget.new(__return_value)
    end

    def activates_default
      __return_value = LibGtk.entry_get_activates_default((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def alignment
      __return_value = LibGtk.entry_get_alignment((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def attributes
      __return_value = LibGtk.entry_get_attributes((to_unsafe as LibGtk::Entry*))
      Pango::AttrList.new(__return_value)
    end

    def buffer
      __return_value = LibGtk.entry_get_buffer((to_unsafe as LibGtk::Entry*))
      Gtk::EntryBuffer.new(__return_value)
    end

    def completion
      __return_value = LibGtk.entry_get_completion((to_unsafe as LibGtk::Entry*))
      Gtk::EntryCompletion.new(__return_value)
    end

    def current_icon_drag_source
      __return_value = LibGtk.entry_get_current_icon_drag_source((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def cursor_hadjustment
      __return_value = LibGtk.entry_get_cursor_hadjustment((to_unsafe as LibGtk::Entry*))
      Gtk::Adjustment.new(__return_value)
    end

    def has_frame
      __return_value = LibGtk.entry_get_has_frame((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def icon_activatable(icon_pos)
      __return_value = LibGtk.entry_get_icon_activatable((to_unsafe as LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_area(icon_pos, icon_area)
      __return_value = LibGtk.entry_get_icon_area((to_unsafe as LibGtk::Entry*), icon_pos, icon_area)
      __return_value
    end

    def icon_at_pos(x, y)
      __return_value = LibGtk.entry_get_icon_at_pos((to_unsafe as LibGtk::Entry*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def icon_gicon(icon_pos)
      __return_value = LibGtk.entry_get_icon_gicon((to_unsafe as LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_name(icon_pos)
      __return_value = LibGtk.entry_get_icon_name((to_unsafe as LibGtk::Entry*), icon_pos)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def icon_pixbuf(icon_pos)
      __return_value = LibGtk.entry_get_icon_pixbuf((to_unsafe as LibGtk::Entry*), icon_pos)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def icon_sensitive(icon_pos)
      __return_value = LibGtk.entry_get_icon_sensitive((to_unsafe as LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_stock(icon_pos)
      __return_value = LibGtk.entry_get_icon_stock((to_unsafe as LibGtk::Entry*), icon_pos)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def icon_storage_type(icon_pos)
      __return_value = LibGtk.entry_get_icon_storage_type((to_unsafe as LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_tooltip_markup(icon_pos)
      __return_value = LibGtk.entry_get_icon_tooltip_markup((to_unsafe as LibGtk::Entry*), icon_pos)
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def icon_tooltip_text(icon_pos)
      __return_value = LibGtk.entry_get_icon_tooltip_text((to_unsafe as LibGtk::Entry*), icon_pos)
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def inner_border
      __return_value = LibGtk.entry_get_inner_border((to_unsafe as LibGtk::Entry*))
      Gtk::Border.new(__return_value) if __return_value
    end

    def input_hints
      __return_value = LibGtk.entry_get_input_hints((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def input_purpose
      __return_value = LibGtk.entry_get_input_purpose((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def invisible_char
      __return_value = LibGtk.entry_get_invisible_char((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def layout
      __return_value = LibGtk.entry_get_layout((to_unsafe as LibGtk::Entry*))
      Pango::Layout.new(__return_value)
    end

    def layout_offsets(x, y)
      __return_value = LibGtk.entry_get_layout_offsets((to_unsafe as LibGtk::Entry*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def max_length
      __return_value = LibGtk.entry_get_max_length((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def max_width_chars
      __return_value = LibGtk.entry_get_max_width_chars((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def overwrite_mode
      __return_value = LibGtk.entry_get_overwrite_mode((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def placeholder_text
      __return_value = LibGtk.entry_get_placeholder_text((to_unsafe as LibGtk::Entry*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def progress_fraction
      __return_value = LibGtk.entry_get_progress_fraction((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def progress_pulse_step
      __return_value = LibGtk.entry_get_progress_pulse_step((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def tabs
      __return_value = LibGtk.entry_get_tabs((to_unsafe as LibGtk::Entry*))
      Pango::TabArray.new(__return_value) if __return_value
    end

    def text
      __return_value = LibGtk.entry_get_text((to_unsafe as LibGtk::Entry*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def text_area(text_area)
      __return_value = LibGtk.entry_get_text_area((to_unsafe as LibGtk::Entry*), text_area)
      __return_value
    end

    def text_length
      __return_value = LibGtk.entry_get_text_length((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def visibility
      __return_value = LibGtk.entry_get_visibility((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def width_chars
      __return_value = LibGtk.entry_get_width_chars((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def grab_focus_without_selecting
      __return_value = LibGtk.entry_grab_focus_without_selecting((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def im_context_filter_keypress(event)
      __return_value = LibGtk.entry_im_context_filter_keypress((to_unsafe as LibGtk::Entry*), (event.to_unsafe as LibGdk::EventKey*))
      __return_value
    end

    def layout_index_to_text_index(layout_index)
      __return_value = LibGtk.entry_layout_index_to_text_index((to_unsafe as LibGtk::Entry*), Int32.new(layout_index))
      __return_value
    end

    def progress_pulse
      __return_value = LibGtk.entry_progress_pulse((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def reset_im_context
      __return_value = LibGtk.entry_reset_im_context((to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def activates_default=(setting)
      __return_value = LibGtk.entry_set_activates_default((to_unsafe as LibGtk::Entry*), Bool.new(setting))
      __return_value
    end

    def alignment=(xalign)
      __return_value = LibGtk.entry_set_alignment((to_unsafe as LibGtk::Entry*), Float32.new(xalign))
      __return_value
    end

    def attributes=(attrs)
      __return_value = LibGtk.entry_set_attributes((to_unsafe as LibGtk::Entry*), (attrs.to_unsafe as LibPango::AttrList*))
      __return_value
    end

    def buffer=(buffer)
      __return_value = LibGtk.entry_set_buffer((to_unsafe as LibGtk::Entry*), (buffer.to_unsafe as LibGtk::EntryBuffer*))
      __return_value
    end

    def completion=(completion)
      __return_value = LibGtk.entry_set_completion((to_unsafe as LibGtk::Entry*), completion && (completion.to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def cursor_hadjustment=(adjustment)
      __return_value = LibGtk.entry_set_cursor_hadjustment((to_unsafe as LibGtk::Entry*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def has_frame=(setting)
      __return_value = LibGtk.entry_set_has_frame((to_unsafe as LibGtk::Entry*), Bool.new(setting))
      __return_value
    end

    def set_icon_activatable(icon_pos, activatable)
      __return_value = LibGtk.entry_set_icon_activatable((to_unsafe as LibGtk::Entry*), icon_pos, Bool.new(activatable))
      __return_value
    end

    def set_icon_drag_source(icon_pos, target_list, actions)
      __return_value = LibGtk.entry_set_icon_drag_source((to_unsafe as LibGtk::Entry*), icon_pos, (target_list.to_unsafe as LibGtk::TargetList*), actions)
      __return_value
    end

    def set_icon_from_gicon(icon_pos, icon)
      __return_value = LibGtk.entry_set_icon_from_gicon((to_unsafe as LibGtk::Entry*), icon_pos, icon && (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def set_icon_from_icon_name(icon_pos, icon_name)
      __return_value = LibGtk.entry_set_icon_from_icon_name((to_unsafe as LibGtk::Entry*), icon_pos, icon_name && icon_name)
      __return_value
    end

    def set_icon_from_pixbuf(icon_pos, pixbuf)
      __return_value = LibGtk.entry_set_icon_from_pixbuf((to_unsafe as LibGtk::Entry*), icon_pos, pixbuf && (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_icon_from_stock(icon_pos, stock_id)
      __return_value = LibGtk.entry_set_icon_from_stock((to_unsafe as LibGtk::Entry*), icon_pos, stock_id && stock_id)
      __return_value
    end

    def set_icon_sensitive(icon_pos, sensitive)
      __return_value = LibGtk.entry_set_icon_sensitive((to_unsafe as LibGtk::Entry*), icon_pos, Bool.new(sensitive))
      __return_value
    end

    def set_icon_tooltip_markup(icon_pos, tooltip)
      __return_value = LibGtk.entry_set_icon_tooltip_markup((to_unsafe as LibGtk::Entry*), icon_pos, tooltip && tooltip)
      __return_value
    end

    def set_icon_tooltip_text(icon_pos, tooltip)
      __return_value = LibGtk.entry_set_icon_tooltip_text((to_unsafe as LibGtk::Entry*), icon_pos, tooltip && tooltip)
      __return_value
    end

    def inner_border=(border)
      __return_value = LibGtk.entry_set_inner_border((to_unsafe as LibGtk::Entry*), border && (border.to_unsafe as LibGtk::Border*))
      __return_value
    end

    def input_hints=(hints)
      __return_value = LibGtk.entry_set_input_hints((to_unsafe as LibGtk::Entry*), hints)
      __return_value
    end

    def input_purpose=(purpose)
      __return_value = LibGtk.entry_set_input_purpose((to_unsafe as LibGtk::Entry*), purpose)
      __return_value
    end

    def invisible_char=(ch)
      __return_value = LibGtk.entry_set_invisible_char((to_unsafe as LibGtk::Entry*), UInt8.new(ch))
      __return_value
    end

    def max_length=(max)
      __return_value = LibGtk.entry_set_max_length((to_unsafe as LibGtk::Entry*), Int32.new(max))
      __return_value
    end

    def max_width_chars=(n_chars)
      __return_value = LibGtk.entry_set_max_width_chars((to_unsafe as LibGtk::Entry*), Int32.new(n_chars))
      __return_value
    end

    def overwrite_mode=(overwrite)
      __return_value = LibGtk.entry_set_overwrite_mode((to_unsafe as LibGtk::Entry*), Bool.new(overwrite))
      __return_value
    end

    def placeholder_text=(text)
      __return_value = LibGtk.entry_set_placeholder_text((to_unsafe as LibGtk::Entry*), text)
      __return_value
    end

    def progress_fraction=(fraction)
      __return_value = LibGtk.entry_set_progress_fraction((to_unsafe as LibGtk::Entry*), Float64.new(fraction))
      __return_value
    end

    def progress_pulse_step=(fraction)
      __return_value = LibGtk.entry_set_progress_pulse_step((to_unsafe as LibGtk::Entry*), Float64.new(fraction))
      __return_value
    end

    def tabs=(tabs)
      __return_value = LibGtk.entry_set_tabs((to_unsafe as LibGtk::Entry*), (tabs.to_unsafe as LibPango::TabArray*))
      __return_value
    end

    def text=(text)
      __return_value = LibGtk.entry_set_text((to_unsafe as LibGtk::Entry*), text)
      __return_value
    end

    def visibility=(visible)
      __return_value = LibGtk.entry_set_visibility((to_unsafe as LibGtk::Entry*), Bool.new(visible))
      __return_value
    end

    def width_chars=(n_chars)
      __return_value = LibGtk.entry_set_width_chars((to_unsafe as LibGtk::Entry*), Int32.new(n_chars))
      __return_value
    end

    def text_index_to_layout_index(text_index)
      __return_value = LibGtk.entry_text_index_to_layout_index((to_unsafe as LibGtk::Entry*), Int32.new(text_index))
      __return_value
    end

    def unset_invisible_char
      __return_value = LibGtk.entry_unset_invisible_char((to_unsafe as LibGtk::Entry*))
      __return_value
    end

  end
end

