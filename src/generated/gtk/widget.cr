module Gtk
  class Widget < GObject::InitiallyUnowned
    @gtk_widget : LibGtk::Widget*?
    def initialize(@gtk_widget : LibGtk::Widget*)
    end

    def to_unsafe
      @gtk_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def app_paintable
      __return_value = LibGtk.widget_get_app_paintable(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def can_default
      __return_value = LibGtk.widget_get_can_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def can_focus
      __return_value = LibGtk.widget_get_can_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def composite_child
      __return_value = LibGtk.widget_get_composite_child(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def double_buffered
      __return_value = LibGtk.widget_get_double_buffered(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def events
      __return_value = LibGtk.widget_get_events(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def expand
      __return_value = LibGtk.widget_get_expand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def focus_on_click
      __return_value = LibGtk.widget_get_focus_on_click(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def halign
      __return_value = LibGtk.widget_get_halign(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_default
      __return_value = LibGtk.widget_get_has_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_focus
      __return_value = LibGtk.widget_get_has_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_tooltip
      __return_value = LibGtk.widget_get_has_tooltip(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def height_request
      __return_value = LibGtk.widget_get_height_request(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hexpand
      __return_value = LibGtk.widget_get_hexpand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hexpand_set
      __return_value = LibGtk.widget_get_hexpand_set(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def is_focus
      __return_value = LibGtk.widget_get_is_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin
      __return_value = LibGtk.widget_get_margin(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_bottom
      __return_value = LibGtk.widget_get_margin_bottom(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_end
      __return_value = LibGtk.widget_get_margin_end(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_left
      __return_value = LibGtk.widget_get_margin_left(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_right
      __return_value = LibGtk.widget_get_margin_right(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_start
      __return_value = LibGtk.widget_get_margin_start(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_top
      __return_value = LibGtk.widget_get_margin_top(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def name
      __return_value = LibGtk.widget_get_name(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def no_show_all
      __return_value = LibGtk.widget_get_no_show_all(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def opacity
      __return_value = LibGtk.widget_get_opacity(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def parent
      __return_value = LibGtk.widget_get_parent(to_unsafe.as(LibGtk::Widget*))
      Gtk::Container.new(__return_value)
    end

    def receives_default
      __return_value = LibGtk.widget_get_receives_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def scale_factor
      __return_value = LibGtk.widget_get_scale_factor(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def sensitive
      __return_value = LibGtk.widget_get_sensitive(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def style
      __return_value = LibGtk.widget_get_style(to_unsafe.as(LibGtk::Widget*))
      Gtk::Style.new(__return_value)
    end

    def tooltip_markup
      __return_value = LibGtk.widget_get_tooltip_markup(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip_text
      __return_value = LibGtk.widget_get_tooltip_text(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def valign
      __return_value = LibGtk.widget_get_valign(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def vexpand
      __return_value = LibGtk.widget_get_vexpand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def vexpand_set
      __return_value = LibGtk.widget_get_vexpand_set(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def visible
      __return_value = LibGtk.widget_get_visible(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def width_request
      __return_value = LibGtk.widget_get_width_request(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def window
      __return_value = LibGtk.widget_get_window(to_unsafe.as(LibGtk::Widget*))
      Gdk::Window.new(__return_value)
    end

    def self.default_direction
      __return_value = LibGtk.widget_get_default_direction
      __return_value
    end

    def self.default_style
      __return_value = LibGtk.widget_get_default_style
      Gtk::Style.new(__return_value)
    end

    def self.pop_composite_child
      __return_value = LibGtk.widget_pop_composite_child
      __return_value
    end

    def self.push_composite_child
      __return_value = LibGtk.widget_push_composite_child
      __return_value
    end

    def self.set_default_direction(dir : Gtk::TextDirection)
      __return_value = LibGtk.widget_set_default_direction(dir)
      __return_value
    end

    def activate
      __return_value = LibGtk.widget_activate(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def add_accelerator(accel_signal, accel_group, accel_key, accel_mods : Gdk::ModifierType, accel_flags : Gtk::AccelFlags)
      __return_value = LibGtk.widget_add_accelerator(to_unsafe.as(LibGtk::Widget*), accel_signal.to_unsafe, accel_group.to_unsafe.as(LibGtk::AccelGroup*), UInt32.new(accel_key), accel_mods, accel_flags)
      __return_value
    end

    def add_device_events(device, events : Gdk::EventMask)
      __return_value = LibGtk.widget_add_device_events(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*), events)
      __return_value
    end

    def add_events(events)
      __return_value = LibGtk.widget_add_events(to_unsafe.as(LibGtk::Widget*), Int32.new(events))
      __return_value
    end

    def add_mnemonic_label(label)
      __return_value = LibGtk.widget_add_mnemonic_label(to_unsafe.as(LibGtk::Widget*), label.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def add_tick_callback(callback, user_data, notify)
      __return_value = LibGtk.widget_add_tick_callback(to_unsafe.as(LibGtk::Widget*), callback, user_data ? user_data : nil, notify)
      __return_value
    end

    def can_activate_accel(signal_id)
      __return_value = LibGtk.widget_can_activate_accel(to_unsafe.as(LibGtk::Widget*), UInt32.new(signal_id))
      __return_value
    end

    def child_focus(direction : Gtk::DirectionType)
      __return_value = LibGtk.widget_child_focus(to_unsafe.as(LibGtk::Widget*), direction)
      __return_value
    end

    def child_notify(child_property)
      __return_value = LibGtk.widget_child_notify(to_unsafe.as(LibGtk::Widget*), child_property.to_unsafe)
      __return_value
    end

    def class_path(path_length, path, path_reversed)
      __return_value = LibGtk.widget_class_path(to_unsafe.as(LibGtk::Widget*), path_length, path, path_reversed)
      __return_value
    end

    def compute_expand(orientation : Gtk::Orientation)
      __return_value = LibGtk.widget_compute_expand(to_unsafe.as(LibGtk::Widget*), orientation)
      __return_value
    end

    def create_pango_context
      __return_value = LibGtk.widget_create_pango_context(to_unsafe.as(LibGtk::Widget*))
      Pango::Context.new(__return_value)
    end

    def create_pango_layout(text)
      __return_value = LibGtk.widget_create_pango_layout(to_unsafe.as(LibGtk::Widget*), text ? text.to_unsafe : nil)
      Pango::Layout.new(__return_value)
    end

    def destroy
      __return_value = LibGtk.widget_destroy(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def destroyed(widget_pointer)
      __return_value = LibGtk.widget_destroyed(to_unsafe.as(LibGtk::Widget*), widget_pointer)
      __return_value
    end

    def device_is_shadowed(device)
      __return_value = LibGtk.widget_device_is_shadowed(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def drag_begin(targets, actions : Gdk::DragAction, button, event)
      __return_value = LibGtk.widget_drag_begin(to_unsafe.as(LibGtk::Widget*), targets.to_unsafe.as(LibGtk::TargetList*), actions, Int32.new(button), event ? event.to_unsafe.as(LibGdk::Event*) : nil)
      Gdk::DragContext.new(__return_value)
    end

    def drag_begin_with_coordinates(targets, actions : Gdk::DragAction, button, event, x, y)
      __return_value = LibGtk.widget_drag_begin_with_coordinates(to_unsafe.as(LibGtk::Widget*), targets.to_unsafe.as(LibGtk::TargetList*), actions, Int32.new(button), event ? event.to_unsafe.as(LibGdk::Event*) : nil, Int32.new(x), Int32.new(y))
      Gdk::DragContext.new(__return_value)
    end

    def drag_check_threshold(start_x, start_y, current_x, current_y)
      __return_value = LibGtk.widget_drag_check_threshold(to_unsafe.as(LibGtk::Widget*), Int32.new(start_x), Int32.new(start_y), Int32.new(current_x), Int32.new(current_y))
      __return_value
    end

    def drag_dest_add_image_targets
      __return_value = LibGtk.widget_drag_dest_add_image_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_dest_add_text_targets
      __return_value = LibGtk.widget_drag_dest_add_text_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_dest_add_uri_targets
      __return_value = LibGtk.widget_drag_dest_add_uri_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_dest_find_target(context, target_list)
      __return_value = LibGtk.widget_drag_dest_find_target(to_unsafe.as(LibGtk::Widget*), context.to_unsafe.as(LibGdk::DragContext*), target_list ? target_list.to_unsafe.as(LibGtk::TargetList*) : nil)
      Gdk::Atom.new(__return_value)
    end

    def drag_dest_get_target_list
      __return_value = LibGtk.widget_drag_dest_get_target_list(to_unsafe.as(LibGtk::Widget*))
      Gtk::TargetList.new(__return_value) if __return_value
    end

    def drag_dest_get_track_motion
      __return_value = LibGtk.widget_drag_dest_get_track_motion(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_dest_set(flags : Gtk::DestDefaults, targets, n_targets, actions : Gdk::DragAction)
      __return_value = LibGtk.widget_drag_dest_set(to_unsafe.as(LibGtk::Widget*), flags, targets ? targets : nil, Int32.new(n_targets), actions)
      __return_value
    end

    def drag_dest_set_proxy(proxy_window, protocol : Gdk::DragProtocol, use_coordinates)
      __return_value = LibGtk.widget_drag_dest_set_proxy(to_unsafe.as(LibGtk::Widget*), proxy_window.to_unsafe.as(LibGdk::Window*), protocol, use_coordinates)
      __return_value
    end

    def drag_dest_set_target_list(target_list)
      __return_value = LibGtk.widget_drag_dest_set_target_list(to_unsafe.as(LibGtk::Widget*), target_list ? target_list.to_unsafe.as(LibGtk::TargetList*) : nil)
      __return_value
    end

    def drag_dest_set_track_motion(track_motion)
      __return_value = LibGtk.widget_drag_dest_set_track_motion(to_unsafe.as(LibGtk::Widget*), track_motion)
      __return_value
    end

    def drag_dest_unset
      __return_value = LibGtk.widget_drag_dest_unset(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_get_data(context, target, time)
      __return_value = LibGtk.widget_drag_get_data(to_unsafe.as(LibGtk::Widget*), context.to_unsafe.as(LibGdk::DragContext*), target.to_unsafe.as(LibGdk::Atom*), UInt32.new(time))
      __return_value
    end

    def drag_highlight
      __return_value = LibGtk.widget_drag_highlight(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_source_add_image_targets
      __return_value = LibGtk.widget_drag_source_add_image_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_source_add_text_targets
      __return_value = LibGtk.widget_drag_source_add_text_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_source_add_uri_targets
      __return_value = LibGtk.widget_drag_source_add_uri_targets(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_source_get_target_list
      __return_value = LibGtk.widget_drag_source_get_target_list(to_unsafe.as(LibGtk::Widget*))
      Gtk::TargetList.new(__return_value) if __return_value
    end

    def drag_source_set(start_button_mask : Gdk::ModifierType, targets, n_targets, actions : Gdk::DragAction)
      __return_value = LibGtk.widget_drag_source_set(to_unsafe.as(LibGtk::Widget*), start_button_mask, targets ? targets : nil, Int32.new(n_targets), actions)
      __return_value
    end

    def drag_source_set_icon_gicon(icon)
      __return_value = LibGtk.widget_drag_source_set_icon_gicon(to_unsafe.as(LibGtk::Widget*), icon.to_unsafe.as(LibGio::Icon*))
      __return_value
    end

    def drag_source_set_icon_name(icon_name)
      __return_value = LibGtk.widget_drag_source_set_icon_name(to_unsafe.as(LibGtk::Widget*), icon_name.to_unsafe)
      __return_value
    end

    def drag_source_set_icon_pixbuf(pixbuf)
      __return_value = LibGtk.widget_drag_source_set_icon_pixbuf(to_unsafe.as(LibGtk::Widget*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def drag_source_set_icon_stock(stock_id)
      __return_value = LibGtk.widget_drag_source_set_icon_stock(to_unsafe.as(LibGtk::Widget*), stock_id.to_unsafe)
      __return_value
    end

    def drag_source_set_target_list(target_list)
      __return_value = LibGtk.widget_drag_source_set_target_list(to_unsafe.as(LibGtk::Widget*), target_list ? target_list.to_unsafe.as(LibGtk::TargetList*) : nil)
      __return_value
    end

    def drag_source_unset
      __return_value = LibGtk.widget_drag_source_unset(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drag_unhighlight
      __return_value = LibGtk.widget_drag_unhighlight(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def draw(cr)
      __return_value = LibGtk.widget_draw(to_unsafe.as(LibGtk::Widget*), cr.to_unsafe.as(LibCairo::Context*))
      __return_value
    end

    def ensure_style
      __return_value = LibGtk.widget_ensure_style(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def error_bell
      __return_value = LibGtk.widget_error_bell(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def event(event)
      __return_value = LibGtk.widget_event(to_unsafe.as(LibGtk::Widget*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def freeze_child_notify
      __return_value = LibGtk.widget_freeze_child_notify(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def accessible
      __return_value = LibGtk.widget_get_accessible(to_unsafe.as(LibGtk::Widget*))
      Atk::Object.new(__return_value)
    end

    def action_group(prefix)
      __return_value = LibGtk.widget_get_action_group(to_unsafe.as(LibGtk::Widget*), prefix.to_unsafe)
      __return_value if __return_value
    end

    def allocated_baseline
      __return_value = LibGtk.widget_get_allocated_baseline(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def allocated_height
      __return_value = LibGtk.widget_get_allocated_height(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def allocated_size(allocation, baseline)
      __return_value = LibGtk.widget_get_allocated_size(to_unsafe.as(LibGtk::Widget*), allocation, baseline)
      __return_value
    end

    def allocated_width
      __return_value = LibGtk.widget_get_allocated_width(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def allocation(allocation)
      __return_value = LibGtk.widget_get_allocation(to_unsafe.as(LibGtk::Widget*), allocation)
      __return_value
    end

    def ancestor(widget_type)
      __return_value = LibGtk.widget_get_ancestor(to_unsafe.as(LibGtk::Widget*), UInt64.new(widget_type))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def app_paintable
      __return_value = LibGtk.widget_get_app_paintable(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def can_default
      __return_value = LibGtk.widget_get_can_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def can_focus
      __return_value = LibGtk.widget_get_can_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def child_requisition(requisition)
      __return_value = LibGtk.widget_get_child_requisition(to_unsafe.as(LibGtk::Widget*), requisition)
      __return_value
    end

    def child_visible
      __return_value = LibGtk.widget_get_child_visible(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def clip(clip)
      __return_value = LibGtk.widget_get_clip(to_unsafe.as(LibGtk::Widget*), clip)
      __return_value
    end

    def clipboard(selection)
      __return_value = LibGtk.widget_get_clipboard(to_unsafe.as(LibGtk::Widget*), selection.to_unsafe.as(LibGdk::Atom*))
      Gtk::Clipboard.new(__return_value)
    end

    def composite_name
      __return_value = LibGtk.widget_get_composite_name(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def device_enabled(device)
      __return_value = LibGtk.widget_get_device_enabled(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def device_events(device)
      __return_value = LibGtk.widget_get_device_events(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def direction
      __return_value = LibGtk.widget_get_direction(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def display
      __return_value = LibGtk.widget_get_display(to_unsafe.as(LibGtk::Widget*))
      Gdk::Display.new(__return_value)
    end

    def double_buffered
      __return_value = LibGtk.widget_get_double_buffered(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def events
      __return_value = LibGtk.widget_get_events(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def focus_on_click
      __return_value = LibGtk.widget_get_focus_on_click(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def font_map
      __return_value = LibGtk.widget_get_font_map(to_unsafe.as(LibGtk::Widget*))
      Pango::FontMap.new(__return_value) if __return_value
    end

    def font_options
      __return_value = LibGtk.widget_get_font_options(to_unsafe.as(LibGtk::Widget*))
      Cairo::FontOptions.new(__return_value) if __return_value
    end

    def frame_clock
      __return_value = LibGtk.widget_get_frame_clock(to_unsafe.as(LibGtk::Widget*))
      Gdk::FrameClock.new(__return_value) if __return_value
    end

    def halign
      __return_value = LibGtk.widget_get_halign(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_tooltip
      __return_value = LibGtk.widget_get_has_tooltip(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_window
      __return_value = LibGtk.widget_get_has_window(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hexpand
      __return_value = LibGtk.widget_get_hexpand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hexpand_set
      __return_value = LibGtk.widget_get_hexpand_set(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def mapped
      __return_value = LibGtk.widget_get_mapped(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_bottom
      __return_value = LibGtk.widget_get_margin_bottom(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_end
      __return_value = LibGtk.widget_get_margin_end(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_left
      __return_value = LibGtk.widget_get_margin_left(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_right
      __return_value = LibGtk.widget_get_margin_right(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_start
      __return_value = LibGtk.widget_get_margin_start(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def margin_top
      __return_value = LibGtk.widget_get_margin_top(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def modifier_mask(intent : Gdk::ModifierIntent)
      __return_value = LibGtk.widget_get_modifier_mask(to_unsafe.as(LibGtk::Widget*), intent)
      __return_value
    end

    def modifier_style
      __return_value = LibGtk.widget_get_modifier_style(to_unsafe.as(LibGtk::Widget*))
      Gtk::RcStyle.new(__return_value)
    end

    def name
      __return_value = LibGtk.widget_get_name(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def no_show_all
      __return_value = LibGtk.widget_get_no_show_all(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def opacity
      __return_value = LibGtk.widget_get_opacity(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def pango_context
      __return_value = LibGtk.widget_get_pango_context(to_unsafe.as(LibGtk::Widget*))
      Pango::Context.new(__return_value)
    end

    def parent
      __return_value = LibGtk.widget_get_parent(to_unsafe.as(LibGtk::Widget*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def parent_window
      __return_value = LibGtk.widget_get_parent_window(to_unsafe.as(LibGtk::Widget*))
      Gdk::Window.new(__return_value)
    end

    def path
      __return_value = LibGtk.widget_get_path(to_unsafe.as(LibGtk::Widget*))
      Gtk::WidgetPath.new(__return_value)
    end

    def pointer(x, y)
      __return_value = LibGtk.widget_get_pointer(to_unsafe.as(LibGtk::Widget*), x, y)
      __return_value
    end

    def preferred_height(minimum_height, natural_height)
      __return_value = LibGtk.widget_get_preferred_height(to_unsafe.as(LibGtk::Widget*), minimum_height, natural_height)
      __return_value
    end

    def preferred_height_and_baseline_for_width(width, minimum_height, natural_height, minimum_baseline, natural_baseline)
      __return_value = LibGtk.widget_get_preferred_height_and_baseline_for_width(to_unsafe.as(LibGtk::Widget*), Int32.new(width), minimum_height, natural_height, minimum_baseline, natural_baseline)
      __return_value
    end

    def preferred_height_for_width(width, minimum_height, natural_height)
      __return_value = LibGtk.widget_get_preferred_height_for_width(to_unsafe.as(LibGtk::Widget*), Int32.new(width), minimum_height, natural_height)
      __return_value
    end

    def preferred_size(minimum_size, natural_size)
      __return_value = LibGtk.widget_get_preferred_size(to_unsafe.as(LibGtk::Widget*), minimum_size, natural_size)
      __return_value
    end

    def preferred_width(minimum_width, natural_width)
      __return_value = LibGtk.widget_get_preferred_width(to_unsafe.as(LibGtk::Widget*), minimum_width, natural_width)
      __return_value
    end

    def preferred_width_for_height(height, minimum_width, natural_width)
      __return_value = LibGtk.widget_get_preferred_width_for_height(to_unsafe.as(LibGtk::Widget*), Int32.new(height), minimum_width, natural_width)
      __return_value
    end

    def realized
      __return_value = LibGtk.widget_get_realized(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def receives_default
      __return_value = LibGtk.widget_get_receives_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def request_mode
      __return_value = LibGtk.widget_get_request_mode(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def requisition(requisition)
      __return_value = LibGtk.widget_get_requisition(to_unsafe.as(LibGtk::Widget*), requisition)
      __return_value
    end

    def root_window
      __return_value = LibGtk.widget_get_root_window(to_unsafe.as(LibGtk::Widget*))
      Gdk::Window.new(__return_value)
    end

    def scale_factor
      __return_value = LibGtk.widget_get_scale_factor(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def screen
      __return_value = LibGtk.widget_get_screen(to_unsafe.as(LibGtk::Widget*))
      Gdk::Screen.new(__return_value)
    end

    def sensitive
      __return_value = LibGtk.widget_get_sensitive(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def settings
      __return_value = LibGtk.widget_get_settings(to_unsafe.as(LibGtk::Widget*))
      Gtk::Settings.new(__return_value)
    end

    def size_request(width, height)
      __return_value = LibGtk.widget_get_size_request(to_unsafe.as(LibGtk::Widget*), width, height)
      __return_value
    end

    def state
      __return_value = LibGtk.widget_get_state(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def state_flags
      __return_value = LibGtk.widget_get_state_flags(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def style
      __return_value = LibGtk.widget_get_style(to_unsafe.as(LibGtk::Widget*))
      Gtk::Style.new(__return_value)
    end

    def style_context
      __return_value = LibGtk.widget_get_style_context(to_unsafe.as(LibGtk::Widget*))
      Gtk::StyleContext.new(__return_value)
    end

    def support_multidevice
      __return_value = LibGtk.widget_get_support_multidevice(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def template_child(widget_type, name)
      __return_value = LibGtk.widget_get_template_child(to_unsafe.as(LibGtk::Widget*), UInt64.new(widget_type), name.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def tooltip_markup
      __return_value = LibGtk.widget_get_tooltip_markup(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def tooltip_text
      __return_value = LibGtk.widget_get_tooltip_text(to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def tooltip_window
      __return_value = LibGtk.widget_get_tooltip_window(to_unsafe.as(LibGtk::Widget*))
      Gtk::Window.new(__return_value)
    end

    def toplevel
      __return_value = LibGtk.widget_get_toplevel(to_unsafe.as(LibGtk::Widget*))
      Gtk::Widget.new(__return_value)
    end

    def valign
      __return_value = LibGtk.widget_get_valign(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def valign_with_baseline
      __return_value = LibGtk.widget_get_valign_with_baseline(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def vexpand
      __return_value = LibGtk.widget_get_vexpand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def vexpand_set
      __return_value = LibGtk.widget_get_vexpand_set(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def visible
      __return_value = LibGtk.widget_get_visible(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def visual
      __return_value = LibGtk.widget_get_visual(to_unsafe.as(LibGtk::Widget*))
      Gdk::Visual.new(__return_value)
    end

    def window
      __return_value = LibGtk.widget_get_window(to_unsafe.as(LibGtk::Widget*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def grab_add
      __return_value = LibGtk.widget_grab_add(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def grab_default
      __return_value = LibGtk.widget_grab_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def grab_focus
      __return_value = LibGtk.widget_grab_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def grab_remove
      __return_value = LibGtk.widget_grab_remove(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_default
      __return_value = LibGtk.widget_has_default(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_focus
      __return_value = LibGtk.widget_has_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_grab
      __return_value = LibGtk.widget_has_grab(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_rc_style
      __return_value = LibGtk.widget_has_rc_style(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_screen
      __return_value = LibGtk.widget_has_screen(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def has_visible_focus
      __return_value = LibGtk.widget_has_visible_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hide
      __return_value = LibGtk.widget_hide(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def hide_on_delete
      __return_value = LibGtk.widget_hide_on_delete(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def in_destruction
      __return_value = LibGtk.widget_in_destruction(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def init_template
      __return_value = LibGtk.widget_init_template(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def input_shape_combine_region(region)
      __return_value = LibGtk.widget_input_shape_combine_region(to_unsafe.as(LibGtk::Widget*), region ? region.to_unsafe.as(LibCairo::Region*) : nil)
      __return_value
    end

    def insert_action_group(name, group)
      __return_value = LibGtk.widget_insert_action_group(to_unsafe.as(LibGtk::Widget*), name.to_unsafe, group ? group.to_unsafe.as(LibGio::ActionGroup*) : nil)
      __return_value
    end

    def intersect(area, intersection)
      __return_value = LibGtk.widget_intersect(to_unsafe.as(LibGtk::Widget*), area.to_unsafe.as(LibGdk::Rectangle*), intersection)
      __return_value
    end

    def ancestor?(ancestor)
      __return_value = LibGtk.widget_is_ancestor(to_unsafe.as(LibGtk::Widget*), ancestor.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def composited?
      __return_value = LibGtk.widget_is_composited(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def drawable?
      __return_value = LibGtk.widget_is_drawable(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def focus?
      __return_value = LibGtk.widget_is_focus(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def sensitive?
      __return_value = LibGtk.widget_is_sensitive(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def toplevel?
      __return_value = LibGtk.widget_is_toplevel(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def visible?
      __return_value = LibGtk.widget_is_visible(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def keynav_failed(direction : Gtk::DirectionType)
      __return_value = LibGtk.widget_keynav_failed(to_unsafe.as(LibGtk::Widget*), direction)
      __return_value
    end

    def list_accel_closures
      __return_value = LibGtk.widget_list_accel_closures(to_unsafe.as(LibGtk::Widget*))
      GLib::ListIterator(GObject::Closure, LibGObject::Closure*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_action_prefixes
      __return_value = LibGtk.widget_list_action_prefixes(to_unsafe.as(LibGtk::Widget*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_mnemonic_labels
      __return_value = LibGtk.widget_list_mnemonic_labels(to_unsafe.as(LibGtk::Widget*))
      GLib::ListIterator(Gtk::Widget, LibGtk::Widget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def map
      __return_value = LibGtk.widget_map(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def mnemonic_activate(group_cycling)
      __return_value = LibGtk.widget_mnemonic_activate(to_unsafe.as(LibGtk::Widget*), group_cycling)
      __return_value
    end

    def modify_base(state : Gtk::StateType, color)
      __return_value = LibGtk.widget_modify_base(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::Color*) : nil)
      __return_value
    end

    def modify_bg(state : Gtk::StateType, color)
      __return_value = LibGtk.widget_modify_bg(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::Color*) : nil)
      __return_value
    end

    def modify_cursor(primary, secondary)
      __return_value = LibGtk.widget_modify_cursor(to_unsafe.as(LibGtk::Widget*), primary ? primary.to_unsafe.as(LibGdk::Color*) : nil, secondary ? secondary.to_unsafe.as(LibGdk::Color*) : nil)
      __return_value
    end

    def modify_fg(state : Gtk::StateType, color)
      __return_value = LibGtk.widget_modify_fg(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::Color*) : nil)
      __return_value
    end

    def modify_font(font_desc)
      __return_value = LibGtk.widget_modify_font(to_unsafe.as(LibGtk::Widget*), font_desc ? font_desc.to_unsafe.as(LibPango::FontDescription*) : nil)
      __return_value
    end

    def modify_style(style)
      __return_value = LibGtk.widget_modify_style(to_unsafe.as(LibGtk::Widget*), style.to_unsafe.as(LibGtk::RcStyle*))
      __return_value
    end

    def modify_text(state : Gtk::StateType, color)
      __return_value = LibGtk.widget_modify_text(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::Color*) : nil)
      __return_value
    end

    def override_background_color(state : Gtk::StateFlags, color)
      __return_value = LibGtk.widget_override_background_color(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::RGBA*) : nil)
      __return_value
    end

    def override_color(state : Gtk::StateFlags, color)
      __return_value = LibGtk.widget_override_color(to_unsafe.as(LibGtk::Widget*), state, color ? color.to_unsafe.as(LibGdk::RGBA*) : nil)
      __return_value
    end

    def override_cursor(cursor, secondary_cursor)
      __return_value = LibGtk.widget_override_cursor(to_unsafe.as(LibGtk::Widget*), cursor ? cursor.to_unsafe.as(LibGdk::RGBA*) : nil, secondary_cursor ? secondary_cursor.to_unsafe.as(LibGdk::RGBA*) : nil)
      __return_value
    end

    def override_font(font_desc)
      __return_value = LibGtk.widget_override_font(to_unsafe.as(LibGtk::Widget*), font_desc ? font_desc.to_unsafe.as(LibPango::FontDescription*) : nil)
      __return_value
    end

    def override_symbolic_color(name, color)
      __return_value = LibGtk.widget_override_symbolic_color(to_unsafe.as(LibGtk::Widget*), name.to_unsafe, color ? color.to_unsafe.as(LibGdk::RGBA*) : nil)
      __return_value
    end

    def path(path_length, path, path_reversed)
      __return_value = LibGtk.widget_path(to_unsafe.as(LibGtk::Widget*), path_length, path, path_reversed)
      __return_value
    end

    def queue_allocate
      __return_value = LibGtk.widget_queue_allocate(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def queue_compute_expand
      __return_value = LibGtk.widget_queue_compute_expand(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def queue_draw
      __return_value = LibGtk.widget_queue_draw(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def queue_draw_area(x, y, width, height)
      __return_value = LibGtk.widget_queue_draw_area(to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      __return_value
    end

    def queue_draw_region(region)
      __return_value = LibGtk.widget_queue_draw_region(to_unsafe.as(LibGtk::Widget*), region.to_unsafe.as(LibCairo::Region*))
      __return_value
    end

    def queue_resize
      __return_value = LibGtk.widget_queue_resize(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def queue_resize_no_redraw
      __return_value = LibGtk.widget_queue_resize_no_redraw(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def realize
      __return_value = LibGtk.widget_realize(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def region_intersect(region)
      __return_value = LibGtk.widget_region_intersect(to_unsafe.as(LibGtk::Widget*), region.to_unsafe.as(LibCairo::Region*))
      Cairo::Region.new(__return_value)
    end

    def register_window(window)
      __return_value = LibGtk.widget_register_window(to_unsafe.as(LibGtk::Widget*), window.to_unsafe.as(LibGdk::Window*))
      __return_value
    end

    def remove_accelerator(accel_group, accel_key, accel_mods : Gdk::ModifierType)
      __return_value = LibGtk.widget_remove_accelerator(to_unsafe.as(LibGtk::Widget*), accel_group.to_unsafe.as(LibGtk::AccelGroup*), UInt32.new(accel_key), accel_mods)
      __return_value
    end

    def remove_mnemonic_label(label)
      __return_value = LibGtk.widget_remove_mnemonic_label(to_unsafe.as(LibGtk::Widget*), label.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def remove_tick_callback(id)
      __return_value = LibGtk.widget_remove_tick_callback(to_unsafe.as(LibGtk::Widget*), UInt32.new(id))
      __return_value
    end

    def render_icon(stock_id, size, detail)
      __return_value = LibGtk.widget_render_icon(to_unsafe.as(LibGtk::Widget*), stock_id.to_unsafe, Int32.new(size), detail ? detail.to_unsafe : nil)
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def render_icon_pixbuf(stock_id, size)
      __return_value = LibGtk.widget_render_icon_pixbuf(to_unsafe.as(LibGtk::Widget*), stock_id.to_unsafe, Int32.new(size))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def reparent(new_parent)
      __return_value = LibGtk.widget_reparent(to_unsafe.as(LibGtk::Widget*), new_parent.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def reset_rc_styles
      __return_value = LibGtk.widget_reset_rc_styles(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def reset_style
      __return_value = LibGtk.widget_reset_style(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def send_expose(event)
      __return_value = LibGtk.widget_send_expose(to_unsafe.as(LibGtk::Widget*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def send_focus_change(event)
      __return_value = LibGtk.widget_send_focus_change(to_unsafe.as(LibGtk::Widget*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def set_accel_path(accel_path, accel_group)
      __return_value = LibGtk.widget_set_accel_path(to_unsafe.as(LibGtk::Widget*), accel_path ? accel_path.to_unsafe : nil, accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      __return_value
    end

    def allocation=(allocation)
      __return_value = LibGtk.widget_set_allocation(to_unsafe.as(LibGtk::Widget*), allocation.to_unsafe.as(LibGdk::Rectangle*))
      __return_value
    end

    def app_paintable=(app_paintable)
      __return_value = LibGtk.widget_set_app_paintable(to_unsafe.as(LibGtk::Widget*), app_paintable)
      __return_value
    end

    def can_default=(can_default)
      __return_value = LibGtk.widget_set_can_default(to_unsafe.as(LibGtk::Widget*), can_default)
      __return_value
    end

    def can_focus=(can_focus)
      __return_value = LibGtk.widget_set_can_focus(to_unsafe.as(LibGtk::Widget*), can_focus)
      __return_value
    end

    def child_visible=(is_visible)
      __return_value = LibGtk.widget_set_child_visible(to_unsafe.as(LibGtk::Widget*), is_visible)
      __return_value
    end

    def clip=(clip)
      __return_value = LibGtk.widget_set_clip(to_unsafe.as(LibGtk::Widget*), clip.to_unsafe.as(LibGdk::Rectangle*))
      __return_value
    end

    def composite_name=(name)
      __return_value = LibGtk.widget_set_composite_name(to_unsafe.as(LibGtk::Widget*), name.to_unsafe)
      __return_value
    end

    def set_device_enabled(device, enabled)
      __return_value = LibGtk.widget_set_device_enabled(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*), enabled)
      __return_value
    end

    def set_device_events(device, events : Gdk::EventMask)
      __return_value = LibGtk.widget_set_device_events(to_unsafe.as(LibGtk::Widget*), device.to_unsafe.as(LibGdk::Device*), events)
      __return_value
    end

    def direction=(dir : Gtk::TextDirection)
      __return_value = LibGtk.widget_set_direction(to_unsafe.as(LibGtk::Widget*), dir)
      __return_value
    end

    def double_buffered=(double_buffered)
      __return_value = LibGtk.widget_set_double_buffered(to_unsafe.as(LibGtk::Widget*), double_buffered)
      __return_value
    end

    def events=(events)
      __return_value = LibGtk.widget_set_events(to_unsafe.as(LibGtk::Widget*), Int32.new(events))
      __return_value
    end

    def focus_on_click=(focus_on_click)
      __return_value = LibGtk.widget_set_focus_on_click(to_unsafe.as(LibGtk::Widget*), focus_on_click)
      __return_value
    end

    def font_map=(font_map)
      __return_value = LibGtk.widget_set_font_map(to_unsafe.as(LibGtk::Widget*), font_map ? font_map.to_unsafe.as(LibPango::FontMap*) : nil)
      __return_value
    end

    def font_options=(options)
      __return_value = LibGtk.widget_set_font_options(to_unsafe.as(LibGtk::Widget*), options ? options.to_unsafe.as(LibCairo::FontOptions*) : nil)
      __return_value
    end

    def halign=(align : Gtk::Align)
      __return_value = LibGtk.widget_set_halign(to_unsafe.as(LibGtk::Widget*), align)
      __return_value
    end

    def has_tooltip=(has_tooltip)
      __return_value = LibGtk.widget_set_has_tooltip(to_unsafe.as(LibGtk::Widget*), has_tooltip)
      __return_value
    end

    def has_window=(has_window)
      __return_value = LibGtk.widget_set_has_window(to_unsafe.as(LibGtk::Widget*), has_window)
      __return_value
    end

    def hexpand=(expand)
      __return_value = LibGtk.widget_set_hexpand(to_unsafe.as(LibGtk::Widget*), expand)
      __return_value
    end

    def hexpand_set=(set)
      __return_value = LibGtk.widget_set_hexpand_set(to_unsafe.as(LibGtk::Widget*), set)
      __return_value
    end

    def mapped=(mapped)
      __return_value = LibGtk.widget_set_mapped(to_unsafe.as(LibGtk::Widget*), mapped)
      __return_value
    end

    def margin_bottom=(margin)
      __return_value = LibGtk.widget_set_margin_bottom(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def margin_end=(margin)
      __return_value = LibGtk.widget_set_margin_end(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def margin_left=(margin)
      __return_value = LibGtk.widget_set_margin_left(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def margin_right=(margin)
      __return_value = LibGtk.widget_set_margin_right(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def margin_start=(margin)
      __return_value = LibGtk.widget_set_margin_start(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def margin_top=(margin)
      __return_value = LibGtk.widget_set_margin_top(to_unsafe.as(LibGtk::Widget*), Int32.new(margin))
      __return_value
    end

    def name=(name)
      __return_value = LibGtk.widget_set_name(to_unsafe.as(LibGtk::Widget*), name.to_unsafe)
      __return_value
    end

    def no_show_all=(no_show_all)
      __return_value = LibGtk.widget_set_no_show_all(to_unsafe.as(LibGtk::Widget*), no_show_all)
      __return_value
    end

    def opacity=(opacity)
      __return_value = LibGtk.widget_set_opacity(to_unsafe.as(LibGtk::Widget*), Float64.new(opacity))
      __return_value
    end

    def parent=(parent)
      __return_value = LibGtk.widget_set_parent(to_unsafe.as(LibGtk::Widget*), parent.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def parent_window=(parent_window)
      __return_value = LibGtk.widget_set_parent_window(to_unsafe.as(LibGtk::Widget*), parent_window.to_unsafe.as(LibGdk::Window*))
      __return_value
    end

    def realized=(realized)
      __return_value = LibGtk.widget_set_realized(to_unsafe.as(LibGtk::Widget*), realized)
      __return_value
    end

    def receives_default=(receives_default)
      __return_value = LibGtk.widget_set_receives_default(to_unsafe.as(LibGtk::Widget*), receives_default)
      __return_value
    end

    def redraw_on_allocate=(redraw_on_allocate)
      __return_value = LibGtk.widget_set_redraw_on_allocate(to_unsafe.as(LibGtk::Widget*), redraw_on_allocate)
      __return_value
    end

    def sensitive=(sensitive)
      __return_value = LibGtk.widget_set_sensitive(to_unsafe.as(LibGtk::Widget*), sensitive)
      __return_value
    end

    def set_size_request(width, height)
      __return_value = LibGtk.widget_set_size_request(to_unsafe.as(LibGtk::Widget*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def state=(state : Gtk::StateType)
      __return_value = LibGtk.widget_set_state(to_unsafe.as(LibGtk::Widget*), state)
      __return_value
    end

    def set_state_flags(flags : Gtk::StateFlags, clear)
      __return_value = LibGtk.widget_set_state_flags(to_unsafe.as(LibGtk::Widget*), flags, clear)
      __return_value
    end

    def style=(style)
      __return_value = LibGtk.widget_set_style(to_unsafe.as(LibGtk::Widget*), style ? style.to_unsafe.as(LibGtk::Style*) : nil)
      __return_value
    end

    def support_multidevice=(support_multidevice)
      __return_value = LibGtk.widget_set_support_multidevice(to_unsafe.as(LibGtk::Widget*), support_multidevice)
      __return_value
    end

    def tooltip_markup=(markup)
      __return_value = LibGtk.widget_set_tooltip_markup(to_unsafe.as(LibGtk::Widget*), markup ? markup.to_unsafe : nil)
      __return_value
    end

    def tooltip_text=(text)
      __return_value = LibGtk.widget_set_tooltip_text(to_unsafe.as(LibGtk::Widget*), text ? text.to_unsafe : nil)
      __return_value
    end

    def tooltip_window=(custom_window)
      __return_value = LibGtk.widget_set_tooltip_window(to_unsafe.as(LibGtk::Widget*), custom_window ? custom_window.to_unsafe.as(LibGtk::Window*) : nil)
      __return_value
    end

    def valign=(align : Gtk::Align)
      __return_value = LibGtk.widget_set_valign(to_unsafe.as(LibGtk::Widget*), align)
      __return_value
    end

    def vexpand=(expand)
      __return_value = LibGtk.widget_set_vexpand(to_unsafe.as(LibGtk::Widget*), expand)
      __return_value
    end

    def vexpand_set=(set)
      __return_value = LibGtk.widget_set_vexpand_set(to_unsafe.as(LibGtk::Widget*), set)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.widget_set_visible(to_unsafe.as(LibGtk::Widget*), visible)
      __return_value
    end

    def visual=(visual)
      __return_value = LibGtk.widget_set_visual(to_unsafe.as(LibGtk::Widget*), visual ? visual.to_unsafe.as(LibGdk::Visual*) : nil)
      __return_value
    end

    def window=(window)
      __return_value = LibGtk.widget_set_window(to_unsafe.as(LibGtk::Widget*), window.to_unsafe.as(LibGdk::Window*))
      __return_value
    end

    def shape_combine_region(region)
      __return_value = LibGtk.widget_shape_combine_region(to_unsafe.as(LibGtk::Widget*), region ? region.to_unsafe.as(LibCairo::Region*) : nil)
      __return_value
    end

    def show
      __return_value = LibGtk.widget_show(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def show_all
      __return_value = LibGtk.widget_show_all(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def show_now
      __return_value = LibGtk.widget_show_now(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def size_allocate(allocation)
      __return_value = LibGtk.widget_size_allocate(to_unsafe.as(LibGtk::Widget*), allocation.to_unsafe.as(LibGdk::Rectangle*))
      __return_value
    end

    def size_allocate_with_baseline(allocation, baseline)
      __return_value = LibGtk.widget_size_allocate_with_baseline(to_unsafe.as(LibGtk::Widget*), allocation.to_unsafe.as(LibGdk::Rectangle*), Int32.new(baseline))
      __return_value
    end

    def size_request(requisition)
      __return_value = LibGtk.widget_size_request(to_unsafe.as(LibGtk::Widget*), requisition)
      __return_value
    end

    def style_attach
      __return_value = LibGtk.widget_style_attach(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def style_get_property(property_name, value)
      __return_value = LibGtk.widget_style_get_property(to_unsafe.as(LibGtk::Widget*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def thaw_child_notify
      __return_value = LibGtk.widget_thaw_child_notify(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def translate_coordinates(dest_widget, src_x, src_y, dest_x, dest_y)
      __return_value = LibGtk.widget_translate_coordinates(to_unsafe.as(LibGtk::Widget*), dest_widget.to_unsafe.as(LibGtk::Widget*), Int32.new(src_x), Int32.new(src_y), dest_x, dest_y)
      __return_value
    end

    def trigger_tooltip_query
      __return_value = LibGtk.widget_trigger_tooltip_query(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def unmap
      __return_value = LibGtk.widget_unmap(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def unparent
      __return_value = LibGtk.widget_unparent(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def unrealize
      __return_value = LibGtk.widget_unrealize(to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def unregister_window(window)
      __return_value = LibGtk.widget_unregister_window(to_unsafe.as(LibGtk::Widget*), window.to_unsafe.as(LibGdk::Window*))
      __return_value
    end

    def unset_state_flags(flags : Gtk::StateFlags)
      __return_value = LibGtk.widget_unset_state_flags(to_unsafe.as(LibGtk::Widget*), flags)
      __return_value
    end

    alias AccelClosuresChangedSignal = Widget ->
    def on_accel_closures_changed(&__block : AccelClosuresChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("accel-closures-changed", __callback)
    end

    alias ButtonPressEventSignal = Widget, Gdk::EventButton -> Bool
    def on_button_press_event(&__block : ButtonPressEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventButton.new(_arg1))
       __return_value
      }
      connect("button-press-event", __callback)
    end

    alias ButtonReleaseEventSignal = Widget, Gdk::EventButton -> Bool
    def on_button_release_event(&__block : ButtonReleaseEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventButton*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventButton.new(_arg1))
       __return_value
      }
      connect("button-release-event", __callback)
    end

    alias CanActivateAccelSignal = Widget, UInt32 -> Bool
    def on_can_activate_accel(&__block : CanActivateAccelSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("can-activate-accel", __callback)
    end

    alias ChildNotifySignal = Widget, GObject::ParamSpec ->
    def on_child_notify(&__block : ChildNotifySignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGObject::ParamSpec*) {
       __return_value = __block.call(Widget.new(_arg0), GObject::ParamSpec.new(_arg1))
       __return_value
      }
      connect("child-notify", __callback)
    end

    alias CompositedChangedSignal = Widget ->
    def on_composited_changed(&__block : CompositedChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("composited-changed", __callback)
    end

    alias ConfigureEventSignal = Widget, Gdk::EventConfigure -> Bool
    def on_configure_event(&__block : ConfigureEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventConfigure*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventConfigure.new(_arg1))
       __return_value
      }
      connect("configure-event", __callback)
    end

    alias DamageEventSignal = Widget, Gdk::EventExpose -> Bool
    def on_damage_event(&__block : DamageEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventExpose*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventExpose.new(_arg1))
       __return_value
      }
      connect("damage-event", __callback)
    end

    alias DeleteEventSignal = Widget, Gdk::Event -> Bool
    def on_delete_event(&__block : DeleteEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Event*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Event.new(_arg1))
       __return_value
      }
      connect("delete-event", __callback)
    end

    alias DestroySignal = Widget ->
    def on_destroy(&__block : DestroySignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("destroy", __callback)
    end

    alias DestroyEventSignal = Widget, Gdk::Event -> Bool
    def on_destroy_event(&__block : DestroyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Event*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Event.new(_arg1))
       __return_value
      }
      connect("destroy-event", __callback)
    end

    alias DirectionChangedSignal = Widget, Gtk::TextDirection ->
    def on_direction_changed(&__block : DirectionChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::TextDirection*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("direction-changed", __callback)
    end

    alias DragBeginSignal = Widget, Gdk::DragContext ->
    def on_drag_begin(&__block : DragBeginSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1))
       __return_value
      }
      connect("drag-begin", __callback)
    end

    alias DragDataDeleteSignal = Widget, Gdk::DragContext ->
    def on_drag_data_delete(&__block : DragDataDeleteSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1))
       __return_value
      }
      connect("drag-data-delete", __callback)
    end

    alias DragDataGetSignal = Widget, Gdk::DragContext, Gtk::SelectionData, UInt32, UInt32 ->
    def on_drag_data_get(&__block : DragDataGetSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::LibGtk::SelectionData*, _arg3 : LibGtk::UInt32*, _arg4 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), Gtk::SelectionData.new(_arg2), _arg3, _arg4)
       __return_value
      }
      connect("drag-data-get", __callback)
    end

    alias DragDataReceivedSignal = Widget, Gdk::DragContext, Int32, Int32, Gtk::SelectionData, UInt32, UInt32 ->
    def on_drag_data_received(&__block : DragDataReceivedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*, _arg4 : LibGtk::LibGtk::SelectionData*, _arg5 : LibGtk::UInt32*, _arg6 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), _arg2, _arg3, Gtk::SelectionData.new(_arg4), _arg5, _arg6)
       __return_value
      }
      connect("drag-data-received", __callback)
    end

    alias DragDropSignal = Widget, Gdk::DragContext, Int32, Int32, UInt32 -> Bool
    def on_drag_drop(&__block : DragDropSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*, _arg4 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), _arg2, _arg3, _arg4)
       __return_value
      }
      connect("drag-drop", __callback)
    end

    alias DragEndSignal = Widget, Gdk::DragContext ->
    def on_drag_end(&__block : DragEndSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1))
       __return_value
      }
      connect("drag-end", __callback)
    end

    alias DragFailedSignal = Widget, Gdk::DragContext, Gtk::DragResult -> Bool
    def on_drag_failed(&__block : DragFailedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::LibGtk::DragResult*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), _arg2)
       __return_value
      }
      connect("drag-failed", __callback)
    end

    alias DragLeaveSignal = Widget, Gdk::DragContext, UInt32 ->
    def on_drag_leave(&__block : DragLeaveSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), _arg2)
       __return_value
      }
      connect("drag-leave", __callback)
    end

    alias DragMotionSignal = Widget, Gdk::DragContext, Int32, Int32, UInt32 -> Bool
    def on_drag_motion(&__block : DragMotionSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*, _arg4 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::DragContext.new(_arg1), _arg2, _arg3, _arg4)
       __return_value
      }
      connect("drag-motion", __callback)
    end

    alias DrawSignal = Widget, Cairo::Context -> Bool
    def on_draw(&__block : DrawSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibCairo::Context*) {
       __return_value = __block.call(Widget.new(_arg0), Cairo::Context.new(_arg1))
       __return_value
      }
      connect("draw", __callback)
    end

    alias EnterNotifyEventSignal = Widget, Gdk::EventCrossing -> Bool
    def on_enter_notify_event(&__block : EnterNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventCrossing*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventCrossing.new(_arg1))
       __return_value
      }
      connect("enter-notify-event", __callback)
    end

    alias EventSignal = Widget, Gdk::Event -> Bool
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Event*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Event.new(_arg1))
       __return_value
      }
      connect("event", __callback)
    end

    alias EventAfterSignal = Widget, Gdk::Event ->
    def on_event_after(&__block : EventAfterSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Event*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Event.new(_arg1))
       __return_value
      }
      connect("event-after", __callback)
    end

    alias FocusSignal = Widget, Gtk::DirectionType -> Bool
    def on_focus(&__block : FocusSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("focus", __callback)
    end

    alias FocusInEventSignal = Widget, Gdk::EventFocus -> Bool
    def on_focus_in_event(&__block : FocusInEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventFocus*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventFocus.new(_arg1))
       __return_value
      }
      connect("focus-in-event", __callback)
    end

    alias FocusOutEventSignal = Widget, Gdk::EventFocus -> Bool
    def on_focus_out_event(&__block : FocusOutEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventFocus*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventFocus.new(_arg1))
       __return_value
      }
      connect("focus-out-event", __callback)
    end

    alias GrabBrokenEventSignal = Widget, Gdk::EventGrabBroken -> Bool
    def on_grab_broken_event(&__block : GrabBrokenEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventGrabBroken*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventGrabBroken.new(_arg1))
       __return_value
      }
      connect("grab-broken-event", __callback)
    end

    alias GrabFocusSignal = Widget ->
    def on_grab_focus(&__block : GrabFocusSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("grab-focus", __callback)
    end

    alias GrabNotifySignal = Widget, Bool ->
    def on_grab_notify(&__block : GrabNotifySignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("grab-notify", __callback)
    end

    alias HideSignal = Widget ->
    def on_hide(&__block : HideSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("hide", __callback)
    end

    alias HierarchyChangedSignal = Widget, Gtk::Widget ->
    def on_hierarchy_changed(&__block : HierarchyChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("hierarchy-changed", __callback)
    end

    alias KeyPressEventSignal = Widget, Gdk::EventKey -> Bool
    def on_key_press_event(&__block : KeyPressEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventKey*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventKey.new(_arg1))
       __return_value
      }
      connect("key-press-event", __callback)
    end

    alias KeyReleaseEventSignal = Widget, Gdk::EventKey -> Bool
    def on_key_release_event(&__block : KeyReleaseEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventKey*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventKey.new(_arg1))
       __return_value
      }
      connect("key-release-event", __callback)
    end

    alias KeynavFailedSignal = Widget, Gtk::DirectionType -> Bool
    def on_keynav_failed(&__block : KeynavFailedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("keynav-failed", __callback)
    end

    alias LeaveNotifyEventSignal = Widget, Gdk::EventCrossing -> Bool
    def on_leave_notify_event(&__block : LeaveNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventCrossing*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventCrossing.new(_arg1))
       __return_value
      }
      connect("leave-notify-event", __callback)
    end

    alias MapSignal = Widget ->
    def on_map(&__block : MapSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("map", __callback)
    end

    alias MapEventSignal = Widget, Gdk::EventAny -> Bool
    def on_map_event(&__block : MapEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventAny*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventAny.new(_arg1))
       __return_value
      }
      connect("map-event", __callback)
    end

    alias MnemonicActivateSignal = Widget, Bool -> Bool
    def on_mnemonic_activate(&__block : MnemonicActivateSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("mnemonic-activate", __callback)
    end

    alias MotionNotifyEventSignal = Widget, Gdk::EventMotion -> Bool
    def on_motion_notify_event(&__block : MotionNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventMotion*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventMotion.new(_arg1))
       __return_value
      }
      connect("motion-notify-event", __callback)
    end

    alias MoveFocusSignal = Widget, Gtk::DirectionType ->
    def on_move_focus(&__block : MoveFocusSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("move-focus", __callback)
    end

    alias ParentSetSignal = Widget, Gtk::Widget ->
    def on_parent_set(&__block : ParentSetSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("parent-set", __callback)
    end

    alias PopupMenuSignal = Widget -> Bool
    def on_popup_menu(&__block : PopupMenuSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("popup-menu", __callback)
    end

    alias PropertyNotifyEventSignal = Widget, Gdk::EventProperty -> Bool
    def on_property_notify_event(&__block : PropertyNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventProperty*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventProperty.new(_arg1))
       __return_value
      }
      connect("property-notify-event", __callback)
    end

    alias ProximityInEventSignal = Widget, Gdk::EventProximity -> Bool
    def on_proximity_in_event(&__block : ProximityInEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventProximity*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventProximity.new(_arg1))
       __return_value
      }
      connect("proximity-in-event", __callback)
    end

    alias ProximityOutEventSignal = Widget, Gdk::EventProximity -> Bool
    def on_proximity_out_event(&__block : ProximityOutEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventProximity*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventProximity.new(_arg1))
       __return_value
      }
      connect("proximity-out-event", __callback)
    end

    alias QueryTooltipSignal = Widget, Int32, Int32, Bool, Gtk::Tooltip -> Bool
    def on_query_tooltip(&__block : QueryTooltipSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*, _arg4 : LibGtk::LibGtk::Tooltip*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1, _arg2, _arg3, Gtk::Tooltip.new(_arg4))
       __return_value
      }
      connect("query-tooltip", __callback)
    end

    alias RealizeSignal = Widget ->
    def on_realize(&__block : RealizeSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("realize", __callback)
    end

    alias ScreenChangedSignal = Widget, Gdk::Screen ->
    def on_screen_changed(&__block : ScreenChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Screen*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Screen.new(_arg1))
       __return_value
      }
      connect("screen-changed", __callback)
    end

    alias ScrollEventSignal = Widget, Gdk::EventScroll -> Bool
    def on_scroll_event(&__block : ScrollEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventScroll*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventScroll.new(_arg1))
       __return_value
      }
      connect("scroll-event", __callback)
    end

    alias SelectionClearEventSignal = Widget, Gdk::EventSelection -> Bool
    def on_selection_clear_event(&__block : SelectionClearEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventSelection*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventSelection.new(_arg1))
       __return_value
      }
      connect("selection-clear-event", __callback)
    end

    alias SelectionGetSignal = Widget, Gtk::SelectionData, UInt32, UInt32 ->
    def on_selection_get(&__block : SelectionGetSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::SelectionData*, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gtk::SelectionData.new(_arg1), _arg2, _arg3)
       __return_value
      }
      connect("selection-get", __callback)
    end

    alias SelectionNotifyEventSignal = Widget, Gdk::EventSelection -> Bool
    def on_selection_notify_event(&__block : SelectionNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventSelection*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventSelection.new(_arg1))
       __return_value
      }
      connect("selection-notify-event", __callback)
    end

    alias SelectionReceivedSignal = Widget, Gtk::SelectionData, UInt32 ->
    def on_selection_received(&__block : SelectionReceivedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::SelectionData*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Widget.new(_arg0), Gtk::SelectionData.new(_arg1), _arg2)
       __return_value
      }
      connect("selection-received", __callback)
    end

    alias SelectionRequestEventSignal = Widget, Gdk::EventSelection -> Bool
    def on_selection_request_event(&__block : SelectionRequestEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventSelection*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventSelection.new(_arg1))
       __return_value
      }
      connect("selection-request-event", __callback)
    end

    alias ShowSignal = Widget ->
    def on_show(&__block : ShowSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("show", __callback)
    end

    alias ShowHelpSignal = Widget, Gtk::WidgetHelpType -> Bool
    def on_show_help(&__block : ShowHelpSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::WidgetHelpType*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("show-help", __callback)
    end

    alias SizeAllocateSignal = Widget, Gdk::Rectangle ->
    def on_size_allocate(&__block : SizeAllocateSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Rectangle*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Rectangle.new(_arg1))
       __return_value
      }
      connect("size-allocate", __callback)
    end

    alias StateChangedSignal = Widget, Gtk::StateType ->
    def on_state_changed(&__block : StateChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::StateType*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("state-changed", __callback)
    end

    alias StateFlagsChangedSignal = Widget, Gtk::StateFlags ->
    def on_state_flags_changed(&__block : StateFlagsChangedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::StateFlags*) {
       __return_value = __block.call(Widget.new(_arg0), _arg1)
       __return_value
      }
      connect("state-flags-changed", __callback)
    end

    alias StyleSetSignal = Widget, Gtk::Style ->
    def on_style_set(&__block : StyleSetSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGtk::Style*) {
       __return_value = __block.call(Widget.new(_arg0), Gtk::Style.new(_arg1))
       __return_value
      }
      connect("style-set", __callback)
    end

    alias StyleUpdatedSignal = Widget ->
    def on_style_updated(&__block : StyleUpdatedSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("style-updated", __callback)
    end

    alias TouchEventSignal = Widget, Gdk::Event -> Bool
    def on_touch_event(&__block : TouchEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::Event*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::Event.new(_arg1))
       __return_value
      }
      connect("touch-event", __callback)
    end

    alias UnmapSignal = Widget ->
    def on_unmap(&__block : UnmapSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("unmap", __callback)
    end

    alias UnmapEventSignal = Widget, Gdk::EventAny -> Bool
    def on_unmap_event(&__block : UnmapEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventAny*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventAny.new(_arg1))
       __return_value
      }
      connect("unmap-event", __callback)
    end

    alias UnrealizeSignal = Widget ->
    def on_unrealize(&__block : UnrealizeSignal)
      __callback = ->(_arg0 : LibGtk::Widget*) {
       __return_value = __block.call(Widget.new(_arg0))
       __return_value
      }
      connect("unrealize", __callback)
    end

    alias VisibilityNotifyEventSignal = Widget, Gdk::EventVisibility -> Bool
    def on_visibility_notify_event(&__block : VisibilityNotifyEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventVisibility*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventVisibility.new(_arg1))
       __return_value
      }
      connect("visibility-notify-event", __callback)
    end

    alias WindowStateEventSignal = Widget, Gdk::EventWindowState -> Bool
    def on_window_state_event(&__block : WindowStateEventSignal)
      __callback = ->(_arg0 : LibGtk::Widget*, _arg1 : LibGtk::LibGdk::EventWindowState*) {
       __return_value = __block.call(Widget.new(_arg0), Gdk::EventWindowState.new(_arg1))
       __return_value
      }
      connect("window-state-event", __callback)
    end

  end
end

