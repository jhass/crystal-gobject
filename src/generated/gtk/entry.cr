require "./widget"

module Gtk
  class Entry < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Entry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Entry*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements Editable
    def activates_default
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "activates_default", gvalue)
      gvalue.boolean
    end

    def attributes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "attributes", gvalue)
      Pango::AttrList.cast(gvalue.object)
    end

    def buffer
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "buffer", gvalue)
      Gtk::EntryBuffer.cast(gvalue.object)
    end

    def caps_lock_warning
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "caps_lock_warning", gvalue)
      gvalue.boolean
    end

    def completion
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "completion", gvalue)
      Gtk::EntryCompletion.cast(gvalue.object)
    end

    def cursor_position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor_position", gvalue)
      gvalue
    end

    def editable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "editable", gvalue)
      gvalue.boolean
    end

    def enable_emoji_completion
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "enable_emoji_completion", gvalue)
      gvalue.boolean
    end

    def has_frame
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_frame", gvalue)
      gvalue.boolean
    end

    def im_module
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "im_module", gvalue)
      gvalue.string
    end

    def inner_border
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inner_border", gvalue)
      Gtk::Border.cast(gvalue.object)
    end

    def input_hints
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_hints", gvalue)
      gvalue.enum
    end

    def input_purpose
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_purpose", gvalue)
      gvalue.enum
    end

    def invisible_char
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "invisible_char", gvalue)
      gvalue
    end

    def invisible_char_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "invisible_char_set", gvalue)
      gvalue.boolean
    end

    def max_length
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_length", gvalue)
      gvalue
    end

    def max_width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_width_chars", gvalue)
      gvalue
    end

    def overwrite_mode
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "overwrite_mode", gvalue)
      gvalue.boolean
    end

    def placeholder_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "placeholder_text", gvalue)
      gvalue.string
    end

    def populate_all
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "populate_all", gvalue)
      gvalue.boolean
    end

    def primary_icon_activatable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_activatable", gvalue)
      gvalue.boolean
    end

    def primary_icon_gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_gicon", gvalue)
      gvalue
    end

    def primary_icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_name", gvalue)
      gvalue.string
    end

    def primary_icon_pixbuf
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_pixbuf", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def primary_icon_sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_sensitive", gvalue)
      gvalue.boolean
    end

    def primary_icon_stock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_stock", gvalue)
      gvalue.string
    end

    def primary_icon_storage_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_storage_type", gvalue)
      gvalue.enum
    end

    def primary_icon_tooltip_markup
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_tooltip_markup", gvalue)
      gvalue.string
    end

    def primary_icon_tooltip_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "primary_icon_tooltip_text", gvalue)
      gvalue.string
    end

    def progress_fraction
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "progress_fraction", gvalue)
      gvalue
    end

    def progress_pulse_step
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "progress_pulse_step", gvalue)
      gvalue
    end

    def scroll_offset
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scroll_offset", gvalue)
      gvalue
    end

    def secondary_icon_activatable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_activatable", gvalue)
      gvalue.boolean
    end

    def secondary_icon_gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_gicon", gvalue)
      gvalue
    end

    def secondary_icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_name", gvalue)
      gvalue.string
    end

    def secondary_icon_pixbuf
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_pixbuf", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def secondary_icon_sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_sensitive", gvalue)
      gvalue.boolean
    end

    def secondary_icon_stock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_stock", gvalue)
      gvalue.string
    end

    def secondary_icon_storage_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_storage_type", gvalue)
      gvalue.enum
    end

    def secondary_icon_tooltip_markup
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_tooltip_markup", gvalue)
      gvalue.string
    end

    def secondary_icon_tooltip_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_icon_tooltip_text", gvalue)
      gvalue.string
    end

    def selection_bound
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selection_bound", gvalue)
      gvalue
    end

    def shadow_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "shadow_type", gvalue)
      gvalue.enum
    end

    def show_emoji_icon
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_emoji_icon", gvalue)
      gvalue.boolean
    end

    def tabs
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tabs", gvalue)
      Pango::TabArray.cast(gvalue.object)
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def text_length
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_length", gvalue)
      gvalue
    end

    def truncate_multiline
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "truncate_multiline", gvalue)
      gvalue.boolean
    end

    def visibility
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visibility", gvalue)
      gvalue.boolean
    end

    def width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width_chars", gvalue)
      gvalue
    end

    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.entry_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_buffer(buffer) : self
      __return_value = LibGtk.entry_new_with_buffer(buffer.to_unsafe.as(LibGtk::EntryBuffer*))
      cast Gtk::Widget.new(__return_value)
    end

    def activates_default
      __return_value = LibGtk.entry_get_activates_default(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def alignment
      __return_value = LibGtk.entry_get_alignment(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def attributes
      __return_value = LibGtk.entry_get_attributes(@pointer.as(LibGtk::Entry*))
      Pango::AttrList.new(__return_value) if __return_value
    end

    def buffer
      __return_value = LibGtk.entry_get_buffer(@pointer.as(LibGtk::Entry*))
      Gtk::EntryBuffer.new(__return_value)
    end

    def completion
      __return_value = LibGtk.entry_get_completion(@pointer.as(LibGtk::Entry*))
      Gtk::EntryCompletion.new(__return_value)
    end

    def current_icon_drag_source
      __return_value = LibGtk.entry_get_current_icon_drag_source(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def cursor_hadjustment
      __return_value = LibGtk.entry_get_cursor_hadjustment(@pointer.as(LibGtk::Entry*))
      Gtk::Adjustment.new(__return_value) if __return_value
    end

    def has_frame
      __return_value = LibGtk.entry_get_has_frame(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def icon_activatable(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_activatable(@pointer.as(LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_area(icon_pos : Gtk::EntryIconPosition, icon_area)
      LibGtk.entry_get_icon_area(@pointer.as(LibGtk::Entry*), icon_pos, icon_area)
      nil
    end

    def icon_at_pos(x, y)
      __return_value = LibGtk.entry_get_icon_at_pos(@pointer.as(LibGtk::Entry*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def icon_gicon(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_gicon(@pointer.as(LibGtk::Entry*), icon_pos)
      __return_value if __return_value
    end

    def icon_name(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_name(@pointer.as(LibGtk::Entry*), icon_pos)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def icon_pixbuf(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_pixbuf(@pointer.as(LibGtk::Entry*), icon_pos)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def icon_sensitive(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_sensitive(@pointer.as(LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_stock(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_stock(@pointer.as(LibGtk::Entry*), icon_pos)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon_storage_type(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_storage_type(@pointer.as(LibGtk::Entry*), icon_pos)
      __return_value
    end

    def icon_tooltip_markup(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_tooltip_markup(@pointer.as(LibGtk::Entry*), icon_pos)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def icon_tooltip_text(icon_pos : Gtk::EntryIconPosition)
      __return_value = LibGtk.entry_get_icon_tooltip_text(@pointer.as(LibGtk::Entry*), icon_pos)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def inner_border
      __return_value = LibGtk.entry_get_inner_border(@pointer.as(LibGtk::Entry*))
      Gtk::Border.new(__return_value) if __return_value
    end

    def input_hints
      __return_value = LibGtk.entry_get_input_hints(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def input_purpose
      __return_value = LibGtk.entry_get_input_purpose(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def invisible_char
      __return_value = LibGtk.entry_get_invisible_char(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def layout
      __return_value = LibGtk.entry_get_layout(@pointer.as(LibGtk::Entry*))
      Pango::Layout.new(__return_value)
    end

    def layout_offsets(x, y)
      LibGtk.entry_get_layout_offsets(@pointer.as(LibGtk::Entry*), x, y)
      nil
    end

    def max_length
      __return_value = LibGtk.entry_get_max_length(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def max_width_chars
      __return_value = LibGtk.entry_get_max_width_chars(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def overwrite_mode
      __return_value = LibGtk.entry_get_overwrite_mode(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def placeholder_text
      __return_value = LibGtk.entry_get_placeholder_text(@pointer.as(LibGtk::Entry*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def progress_fraction
      __return_value = LibGtk.entry_get_progress_fraction(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def progress_pulse_step
      __return_value = LibGtk.entry_get_progress_pulse_step(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def tabs
      __return_value = LibGtk.entry_get_tabs(@pointer.as(LibGtk::Entry*))
      Pango::TabArray.new(__return_value) if __return_value
    end

    def text
      __return_value = LibGtk.entry_get_text(@pointer.as(LibGtk::Entry*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_area(text_area)
      LibGtk.entry_get_text_area(@pointer.as(LibGtk::Entry*), text_area)
      nil
    end

    def text_length
      __return_value = LibGtk.entry_get_text_length(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def visibility
      __return_value = LibGtk.entry_get_visibility(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def width_chars
      __return_value = LibGtk.entry_get_width_chars(@pointer.as(LibGtk::Entry*))
      __return_value
    end

    def grab_focus_without_selecting
      LibGtk.entry_grab_focus_without_selecting(@pointer.as(LibGtk::Entry*))
      nil
    end

    def im_context_filter_keypress(event)
      __return_value = LibGtk.entry_im_context_filter_keypress(@pointer.as(LibGtk::Entry*), event.to_unsafe.as(LibGdk::EventKey*))
      __return_value
    end

    def layout_index_to_text_index(layout_index)
      __return_value = LibGtk.entry_layout_index_to_text_index(@pointer.as(LibGtk::Entry*), Int32.new(layout_index))
      __return_value
    end

    def progress_pulse
      LibGtk.entry_progress_pulse(@pointer.as(LibGtk::Entry*))
      nil
    end

    def reset_im_context
      LibGtk.entry_reset_im_context(@pointer.as(LibGtk::Entry*))
      nil
    end

    def activates_default=(setting)
      LibGtk.entry_set_activates_default(@pointer.as(LibGtk::Entry*), setting)
      nil
    end

    def alignment=(xalign)
      LibGtk.entry_set_alignment(@pointer.as(LibGtk::Entry*), Float32.new(xalign))
      nil
    end

    def attributes=(attrs)
      LibGtk.entry_set_attributes(@pointer.as(LibGtk::Entry*), attrs.to_unsafe.as(LibPango::AttrList*))
      nil
    end

    def buffer=(buffer)
      LibGtk.entry_set_buffer(@pointer.as(LibGtk::Entry*), buffer.to_unsafe.as(LibGtk::EntryBuffer*))
      nil
    end

    def completion=(completion)
      LibGtk.entry_set_completion(@pointer.as(LibGtk::Entry*), completion ? completion.to_unsafe.as(LibGtk::EntryCompletion*) : nil)
      nil
    end

    def cursor_hadjustment=(adjustment)
      LibGtk.entry_set_cursor_hadjustment(@pointer.as(LibGtk::Entry*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def has_frame=(setting)
      LibGtk.entry_set_has_frame(@pointer.as(LibGtk::Entry*), setting)
      nil
    end

    def set_icon_activatable(icon_pos : Gtk::EntryIconPosition, activatable)
      LibGtk.entry_set_icon_activatable(@pointer.as(LibGtk::Entry*), icon_pos, activatable)
      nil
    end

    def set_icon_drag_source(icon_pos : Gtk::EntryIconPosition, target_list, actions : Gdk::DragAction)
      LibGtk.entry_set_icon_drag_source(@pointer.as(LibGtk::Entry*), icon_pos, target_list.to_unsafe.as(LibGtk::TargetList*), actions)
      nil
    end

    def set_icon_from_gicon(icon_pos : Gtk::EntryIconPosition, icon)
      LibGtk.entry_set_icon_from_gicon(@pointer.as(LibGtk::Entry*), icon_pos, icon ? icon.to_unsafe.as(LibGio::Icon*) : nil)
      nil
    end

    def set_icon_from_icon_name(icon_pos : Gtk::EntryIconPosition, icon_name)
      LibGtk.entry_set_icon_from_icon_name(@pointer.as(LibGtk::Entry*), icon_pos, icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def set_icon_from_pixbuf(icon_pos : Gtk::EntryIconPosition, pixbuf)
      LibGtk.entry_set_icon_from_pixbuf(@pointer.as(LibGtk::Entry*), icon_pos, pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_icon_from_stock(icon_pos : Gtk::EntryIconPosition, stock_id)
      LibGtk.entry_set_icon_from_stock(@pointer.as(LibGtk::Entry*), icon_pos, stock_id ? stock_id.to_unsafe : nil)
      nil
    end

    def set_icon_sensitive(icon_pos : Gtk::EntryIconPosition, sensitive)
      LibGtk.entry_set_icon_sensitive(@pointer.as(LibGtk::Entry*), icon_pos, sensitive)
      nil
    end

    def set_icon_tooltip_markup(icon_pos : Gtk::EntryIconPosition, tooltip)
      LibGtk.entry_set_icon_tooltip_markup(@pointer.as(LibGtk::Entry*), icon_pos, tooltip ? tooltip.to_unsafe : nil)
      nil
    end

    def set_icon_tooltip_text(icon_pos : Gtk::EntryIconPosition, tooltip)
      LibGtk.entry_set_icon_tooltip_text(@pointer.as(LibGtk::Entry*), icon_pos, tooltip ? tooltip.to_unsafe : nil)
      nil
    end

    def inner_border=(border)
      LibGtk.entry_set_inner_border(@pointer.as(LibGtk::Entry*), border ? border.to_unsafe.as(LibGtk::Border*) : nil)
      nil
    end

    def input_hints=(hints : Gtk::InputHints)
      LibGtk.entry_set_input_hints(@pointer.as(LibGtk::Entry*), hints)
      nil
    end

    def input_purpose=(purpose : Gtk::InputPurpose)
      LibGtk.entry_set_input_purpose(@pointer.as(LibGtk::Entry*), purpose)
      nil
    end

    def invisible_char=(ch)
      LibGtk.entry_set_invisible_char(@pointer.as(LibGtk::Entry*), UInt8.new(ch))
      nil
    end

    def max_length=(max)
      LibGtk.entry_set_max_length(@pointer.as(LibGtk::Entry*), Int32.new(max))
      nil
    end

    def max_width_chars=(n_chars)
      LibGtk.entry_set_max_width_chars(@pointer.as(LibGtk::Entry*), Int32.new(n_chars))
      nil
    end

    def overwrite_mode=(overwrite)
      LibGtk.entry_set_overwrite_mode(@pointer.as(LibGtk::Entry*), overwrite)
      nil
    end

    def placeholder_text=(text)
      LibGtk.entry_set_placeholder_text(@pointer.as(LibGtk::Entry*), text ? text.to_unsafe : nil)
      nil
    end

    def progress_fraction=(fraction)
      LibGtk.entry_set_progress_fraction(@pointer.as(LibGtk::Entry*), Float64.new(fraction))
      nil
    end

    def progress_pulse_step=(fraction)
      LibGtk.entry_set_progress_pulse_step(@pointer.as(LibGtk::Entry*), Float64.new(fraction))
      nil
    end

    def tabs=(tabs)
      LibGtk.entry_set_tabs(@pointer.as(LibGtk::Entry*), tabs.to_unsafe.as(LibPango::TabArray*))
      nil
    end

    def text=(text)
      LibGtk.entry_set_text(@pointer.as(LibGtk::Entry*), text.to_unsafe)
      nil
    end

    def visibility=(visible)
      LibGtk.entry_set_visibility(@pointer.as(LibGtk::Entry*), visible)
      nil
    end

    def width_chars=(n_chars)
      LibGtk.entry_set_width_chars(@pointer.as(LibGtk::Entry*), Int32.new(n_chars))
      nil
    end

    def text_index_to_layout_index(text_index)
      __return_value = LibGtk.entry_text_index_to_layout_index(@pointer.as(LibGtk::Entry*), Int32.new(text_index))
      __return_value
    end

    def unset_invisible_char
      LibGtk.entry_unset_invisible_char(@pointer.as(LibGtk::Entry*))
      nil
    end

    alias ActivateSignal = Entry ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias BackspaceSignal = Entry ->
    def on_backspace(&__block : BackspaceSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("backspace", __callback)
    end

    alias CopyClipboardSignal = Entry ->
    def on_copy_clipboard(&__block : CopyClipboardSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("copy-clipboard", __callback)
    end

    alias CutClipboardSignal = Entry ->
    def on_cut_clipboard(&__block : CutClipboardSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("cut-clipboard", __callback)
    end

    alias DeleteFromCursorSignal = Entry, Gtk::DeleteType, Int32 ->
    def on_delete_from_cursor(&__block : DeleteFromCursorSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::LibGtk::DeleteType*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(Entry.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("delete-from-cursor", __callback)
    end

    alias IconPressSignal = Entry, Gtk::EntryIconPosition, Gdk::EventButton ->
    def on_icon_press(&__block : IconPressSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::LibGtk::EntryIconPosition*, _arg2 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(Entry.new(_arg0), _arg1, Gdk::EventButton.new(_arg2))
       __return_value
      }
      connect("icon-press", __callback)
    end

    alias IconReleaseSignal = Entry, Gtk::EntryIconPosition, Gdk::EventButton ->
    def on_icon_release(&__block : IconReleaseSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::LibGtk::EntryIconPosition*, _arg2 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(Entry.new(_arg0), _arg1, Gdk::EventButton.new(_arg2))
       __return_value
      }
      connect("icon-release", __callback)
    end

    alias InsertAtCursorSignal = Entry, String ->
    def on_insert_at_cursor(&__block : InsertAtCursorSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(Entry.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("insert-at-cursor", __callback)
    end

    alias InsertEmojiSignal = Entry ->
    def on_insert_emoji(&__block : InsertEmojiSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("insert-emoji", __callback)
    end

    alias MoveCursorSignal = Entry, Gtk::MovementStep, Int32, Bool ->
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*) {
       __return_value = __block.call(Entry.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias PasteClipboardSignal = Entry ->
    def on_paste_clipboard(&__block : PasteClipboardSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("paste-clipboard", __callback)
    end

    alias PopulatePopupSignal = Entry, Gtk::Widget ->
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(Entry.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("populate-popup", __callback)
    end

    alias PreeditChangedSignal = Entry, String ->
    def on_preedit_changed(&__block : PreeditChangedSignal)
      __callback = ->(_arg0 : LibGtk::Entry*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(Entry.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("preedit-changed", __callback)
    end

    alias ToggleOverwriteSignal = Entry ->
    def on_toggle_overwrite(&__block : ToggleOverwriteSignal)
      __callback = ->(_arg0 : LibGtk::Entry*) {
       __return_value = __block.call(Entry.new(_arg0))
       __return_value
      }
      connect("toggle-overwrite", __callback)
    end

  end
end

