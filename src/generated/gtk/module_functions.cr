module Gtk
  def self.accel_groups_activate(object, accel_key, accel_mods)
    __return_value = LibGtk.accel_groups_activate((object.to_unsafe as LibGObject::Object*), UInt32.new(accel_key), accel_mods)
    __return_value
  end

  def self.accel_groups_from_object(object)
    __return_value = LibGtk.accel_groups_from_object((object.to_unsafe as LibGObject::Object*))
    __return_value
  end

  def self.accelerator_get_default_mod_mask
    __return_value = LibGtk.accelerator_get_default_mod_mask
    __return_value
  end

  def self.accelerator_get_label(accelerator_key, accelerator_mods)
    __return_value = LibGtk.accelerator_get_label(UInt32.new(accelerator_key), accelerator_mods)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.accelerator_get_label_with_keycode(display, accelerator_key, keycode, accelerator_mods)
    __return_value = LibGtk.accelerator_get_label_with_keycode(display && (display.to_unsafe as LibGdk::Display*), UInt32.new(accelerator_key), UInt32.new(keycode), accelerator_mods)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.accelerator_name(accelerator_key, accelerator_mods)
    __return_value = LibGtk.accelerator_name(UInt32.new(accelerator_key), accelerator_mods)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.accelerator_name_with_keycode(display, accelerator_key, keycode, accelerator_mods)
    __return_value = LibGtk.accelerator_name_with_keycode(display && (display.to_unsafe as LibGdk::Display*), UInt32.new(accelerator_key), UInt32.new(keycode), accelerator_mods)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.accelerator_parse(accelerator, accelerator_key, accelerator_mods)
    __return_value = LibGtk.accelerator_parse(accelerator, UInt32.new(accelerator_key), accelerator_mods)
    __return_value
  end

  def self.accelerator_parse_with_keycode(accelerator, accelerator_key, accelerator_codes, accelerator_mods)
    __return_value = LibGtk.accelerator_parse_with_keycode(accelerator, UInt32.new(accelerator_key), accelerator_codes, accelerator_mods)
    __return_value
  end

  def self.accelerator_set_default_mod_mask(default_mod_mask)
    __return_value = LibGtk.accelerator_set_default_mod_mask(default_mod_mask)
    __return_value
  end

  def self.accelerator_valid(keyval, modifiers)
    __return_value = LibGtk.accelerator_valid(UInt32.new(keyval), modifiers)
    __return_value
  end

  def self.alternative_dialog_button_order(screen)
    __return_value = LibGtk.alternative_dialog_button_order(screen && (screen.to_unsafe as LibGdk::Screen*))
    __return_value
  end

  def self.binding_entry_add_signal_from_string(binding_set, signal_desc)
    __return_value = LibGtk.binding_entry_add_signal_from_string((binding_set.to_unsafe as LibGtk::BindingSet*), signal_desc)
    __return_value
  end

  def self.binding_entry_add_signall(binding_set, keyval, modifiers, signal_name, binding_args)
    __return_value = LibGtk.binding_entry_add_signall((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers, signal_name, binding_args)
    __return_value
  end

  def self.binding_entry_remove(binding_set, keyval, modifiers)
    __return_value = LibGtk.binding_entry_remove((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
    __return_value
  end

  def self.binding_entry_skip(binding_set, keyval, modifiers)
    __return_value = LibGtk.binding_entry_skip((binding_set.to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers)
    __return_value
  end

  def self.binding_set_find(set_name)
    __return_value = LibGtk.binding_set_find(set_name)
    Gtk::BindingSet.new(__return_value)
  end

  def self.bindings_activate(object, keyval, modifiers)
    __return_value = LibGtk.bindings_activate((object.to_unsafe as LibGObject::Object*), UInt32.new(keyval), modifiers)
    __return_value
  end

  def self.bindings_activate_event(object, event)
    __return_value = LibGtk.bindings_activate_event((object.to_unsafe as LibGObject::Object*), (event.to_unsafe as LibGdk::EventKey*))
    __return_value
  end

  def self.builder_error_quark
    __return_value = LibGtk.builder_error_quark
    __return_value
  end

  def self.cairo_should_draw_window(cr, window)
    __return_value = LibGtk.cairo_should_draw_window((cr.to_unsafe as LibCairo::Context*), (window.to_unsafe as LibGdk::Window*))
    __return_value
  end

  def self.cairo_transform_to_window(cr, widget, window)
    __return_value = LibGtk.cairo_transform_to_window((cr.to_unsafe as LibCairo::Context*), (widget.to_unsafe as LibGtk::Widget*), (window.to_unsafe as LibGdk::Window*))
    __return_value
  end

  def self.check_version(required_major, required_minor, required_micro)
    __return_value = LibGtk.check_version(UInt32.new(required_major), UInt32.new(required_minor), UInt32.new(required_micro))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.css_provider_error_quark
    __return_value = LibGtk.css_provider_error_quark
    __return_value
  end

  def self.device_grab_add(widget, device, block_others)
    __return_value = LibGtk.device_grab_add((widget.to_unsafe as LibGtk::Widget*), (device.to_unsafe as LibGdk::Device*), Bool.new(block_others))
    __return_value
  end

  def self.device_grab_remove(widget, device)
    __return_value = LibGtk.device_grab_remove((widget.to_unsafe as LibGtk::Widget*), (device.to_unsafe as LibGdk::Device*))
    __return_value
  end

  def self.disable_setlocale
    __return_value = LibGtk.disable_setlocale
    __return_value
  end

  def self.distribute_natural_allocation(extra_space, n_requested_sizes, sizes)
    __return_value = LibGtk.distribute_natural_allocation(Int32.new(extra_space), UInt32.new(n_requested_sizes), (sizes.to_unsafe as LibGtk::RequestedSize*))
    __return_value
  end

  def self.drag_cancel(context)
    __return_value = LibGtk.drag_cancel((context.to_unsafe as LibGdk::DragContext*))
    __return_value
  end

  def self.drag_finish(context, success, del, time)
    __return_value = LibGtk.drag_finish((context.to_unsafe as LibGdk::DragContext*), Bool.new(success), Bool.new(del), UInt32.new(time))
    __return_value
  end

  def self.drag_get_source_widget(context)
    __return_value = LibGtk.drag_get_source_widget((context.to_unsafe as LibGdk::DragContext*))
    Gtk::Widget.new(__return_value)
  end

  def self.drag_set_icon_default(context)
    __return_value = LibGtk.drag_set_icon_default((context.to_unsafe as LibGdk::DragContext*))
    __return_value
  end

  def self.drag_set_icon_gicon(context, icon, hot_x, hot_y)
    __return_value = LibGtk.drag_set_icon_gicon((context.to_unsafe as LibGdk::DragContext*), (icon.to_unsafe as LibGio::Icon*), Int32.new(hot_x), Int32.new(hot_y))
    __return_value
  end

  def self.drag_set_icon_name(context, icon_name, hot_x, hot_y)
    __return_value = LibGtk.drag_set_icon_name((context.to_unsafe as LibGdk::DragContext*), icon_name, Int32.new(hot_x), Int32.new(hot_y))
    __return_value
  end

  def self.drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
    __return_value = LibGtk.drag_set_icon_pixbuf((context.to_unsafe as LibGdk::DragContext*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*), Int32.new(hot_x), Int32.new(hot_y))
    __return_value
  end

  def self.drag_set_icon_stock(context, stock_id, hot_x, hot_y)
    __return_value = LibGtk.drag_set_icon_stock((context.to_unsafe as LibGdk::DragContext*), stock_id, Int32.new(hot_x), Int32.new(hot_y))
    __return_value
  end

  def self.drag_set_icon_surface(context, surface)
    __return_value = LibGtk.drag_set_icon_surface((context.to_unsafe as LibGdk::DragContext*), (surface.to_unsafe as LibCairo::Surface*))
    __return_value
  end

  def self.drag_set_icon_widget(context, widget, hot_x, hot_y)
    __return_value = LibGtk.drag_set_icon_widget((context.to_unsafe as LibGdk::DragContext*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(hot_x), Int32.new(hot_y))
    __return_value
  end

  def self.draw_insertion_cursor(widget, cr, location, is_primary, direction, draw_arrow)
    __return_value = LibGtk.draw_insertion_cursor((widget.to_unsafe as LibGtk::Widget*), (cr.to_unsafe as LibCairo::Context*), (location.to_unsafe as LibCairo::RectangleInt*), Bool.new(is_primary), direction, Bool.new(draw_arrow))
    __return_value
  end

  def self.events_pending
    __return_value = LibGtk.events_pending
    __return_value
  end

  def self.false
    __return_value = LibGtk.false
    __return_value
  end

  def self.file_chooser_error_quark
    __return_value = LibGtk.file_chooser_error_quark
    __return_value
  end

  def self.binary_age
    __return_value = LibGtk.get_binary_age
    __return_value
  end

  def self.current_event
    __return_value = LibGtk.get_current_event
    __return_value
  end

  def self.current_event_device
    __return_value = LibGtk.get_current_event_device
    Gdk::Device.new(__return_value)
  end

  def self.current_event_state(state)
    __return_value = LibGtk.get_current_event_state(state)
    __return_value
  end

  def self.current_event_time
    __return_value = LibGtk.get_current_event_time
    __return_value
  end

  def self.debug_flags
    __return_value = LibGtk.get_debug_flags
    __return_value
  end

  def self.default_language
    __return_value = LibGtk.get_default_language
    Pango::Language.new(__return_value)
  end

  def self.event_widget(event)
    __return_value = LibGtk.get_event_widget((event.to_unsafe as LibGdk::Event*))
    Gtk::Widget.new(__return_value)
  end

  def self.interface_age
    __return_value = LibGtk.get_interface_age
    __return_value
  end

  def self.locale_direction
    __return_value = LibGtk.get_locale_direction
    __return_value
  end

  def self.major_version
    __return_value = LibGtk.get_major_version
    __return_value
  end

  def self.micro_version
    __return_value = LibGtk.get_micro_version
    __return_value
  end

  def self.minor_version
    __return_value = LibGtk.get_minor_version
    __return_value
  end

  def self.option_group(open_default_display)
    __return_value = LibGtk.get_option_group(Bool.new(open_default_display))
    GLib::OptionGroup.new(__return_value)
  end

  def self.grab_get_current
    __return_value = LibGtk.grab_get_current
    Gtk::Widget.new(__return_value)
  end

  def self.icon_size_from_name(name)
    __return_value = LibGtk.icon_size_from_name(name)
    __return_value
  end

  def self.icon_size_get_name(size)
    __return_value = LibGtk.icon_size_get_name(Int32.new(size))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.icon_size_lookup(size, width, height)
    __return_value = LibGtk.icon_size_lookup(Int32.new(size), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.icon_size_lookup_for_settings(settings, size, width, height)
    __return_value = LibGtk.icon_size_lookup_for_settings((settings.to_unsafe as LibGtk::Settings*), Int32.new(size), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.icon_size_register(name, width, height)
    __return_value = LibGtk.icon_size_register(name, Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.icon_size_register_alias(_alias, target)
    __return_value = LibGtk.icon_size_register_alias(_alias, Int32.new(target))
    __return_value
  end

  def self.icon_theme_error_quark
    __return_value = LibGtk.icon_theme_error_quark
    __return_value
  end

  def self.init(argc, argv)
    __return_value = LibGtk.init(Int32.new(argc), argv && argv)
    __return_value
  end

  def self.init_check(argc, argv)
    __return_value = LibGtk.init_check(Int32.new(argc), argv && argv)
    __return_value
  end

  def self.init_with_args(argc, argv, parameter_string, entries, translation_domain)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGtk.init_with_args(Int32.new(argc), argv && argv, parameter_string && parameter_string, entries, translation_domain, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.key_snooper_remove(snooper_handler_id)
    __return_value = LibGtk.key_snooper_remove(UInt32.new(snooper_handler_id))
    __return_value
  end

  def self.main
    __return_value = LibGtk.main
    __return_value
  end

  def self.main_do_event(event)
    __return_value = LibGtk.main_do_event((event.to_unsafe as LibGdk::Event*))
    __return_value
  end

  def self.main_iteration
    __return_value = LibGtk.main_iteration
    __return_value
  end

  def self.main_iteration_do(blocking)
    __return_value = LibGtk.main_iteration_do(Bool.new(blocking))
    __return_value
  end

  def self.main_level
    __return_value = LibGtk.main_level
    __return_value
  end

  def self.main_quit
    __return_value = LibGtk.main_quit
    __return_value
  end

  def self.paint_arrow(style, cr, state_type, shadow_type, widget, detail, arrow_type, fill, x, y, width, height)
    __return_value = LibGtk.paint_arrow((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, arrow_type, Bool.new(fill), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_box(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_box((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_box_gap(style, cr, state_type, shadow_type, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
    __return_value = LibGtk.paint_box_gap((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), gap_side, Int32.new(gap_x), Int32.new(gap_width))
    __return_value
  end

  def self.paint_check(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_check((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_diamond(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_diamond((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_expander(style, cr, state_type, widget, detail, x, y, expander_style)
    __return_value = LibGtk.paint_expander((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), expander_style)
    __return_value
  end

  def self.paint_extension(style, cr, state_type, shadow_type, widget, detail, x, y, width, height, gap_side)
    __return_value = LibGtk.paint_extension((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), gap_side)
    __return_value
  end

  def self.paint_flat_box(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_flat_box((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_focus(style, cr, state_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_focus((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_handle(style, cr, state_type, shadow_type, widget, detail, x, y, width, height, orientation)
    __return_value = LibGtk.paint_handle((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), orientation)
    __return_value
  end

  def self.paint_hline(style, cr, state_type, widget, detail, x1, x2, y)
    __return_value = LibGtk.paint_hline((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x1), Int32.new(x2), Int32.new(y))
    __return_value
  end

  def self.paint_layout(style, cr, state_type, use_text, widget, detail, x, y, layout)
    __return_value = LibGtk.paint_layout((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, Bool.new(use_text), widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), (layout.to_unsafe as LibPango::Layout*))
    __return_value
  end

  def self.paint_option(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_option((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_resize_grip(style, cr, state_type, widget, detail, edge, x, y, width, height)
    __return_value = LibGtk.paint_resize_grip((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, edge, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_shadow(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_shadow((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_shadow_gap(style, cr, state_type, shadow_type, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
    __return_value = LibGtk.paint_shadow_gap((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), gap_side, Int32.new(gap_x), Int32.new(gap_width))
    __return_value
  end

  def self.paint_slider(style, cr, state_type, shadow_type, widget, detail, x, y, width, height, orientation)
    __return_value = LibGtk.paint_slider((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), orientation)
    __return_value
  end

  def self.paint_spinner(style, cr, state_type, widget, detail, step, x, y, width, height)
    __return_value = LibGtk.paint_spinner((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, UInt32.new(step), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_tab(style, cr, state_type, shadow_type, widget, detail, x, y, width, height)
    __return_value = LibGtk.paint_tab((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, shadow_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.paint_vline(style, cr, state_type, widget, detail, y1, y2, x)
    __return_value = LibGtk.paint_vline((style.to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), state_type, widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail, Int32.new(y1), Int32.new(y2), Int32.new(x))
    __return_value
  end

  def self.paper_size_get_default
    __return_value = LibGtk.paper_size_get_default
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.paper_size_get_paper_sizes(include_custom)
    __return_value = LibGtk.paper_size_get_paper_sizes(Bool.new(include_custom))
    __return_value
  end

  def self.parse_args(argc, argv)
    __return_value = LibGtk.parse_args(Int32.new(argc), argv)
    __return_value
  end

  def self.print_error_quark
    __return_value = LibGtk.print_error_quark
    __return_value
  end

  def self.print_run_page_setup_dialog(parent, page_setup, settings)
    __return_value = LibGtk.print_run_page_setup_dialog(parent && (parent.to_unsafe as LibGtk::Window*), page_setup && (page_setup.to_unsafe as LibGtk::PageSetup*), (settings.to_unsafe as LibGtk::PrintSettings*))
    Gtk::PageSetup.new(__return_value)
  end

  def self.print_run_page_setup_dialog_async(parent, page_setup, settings, done_cb : LibGtk::PageSetupDoneFunc, data)
    __return_value = LibGtk.print_run_page_setup_dialog_async(parent && (parent.to_unsafe as LibGtk::Window*), page_setup && (page_setup.to_unsafe as LibGtk::PageSetup*), (settings.to_unsafe as LibGtk::PrintSettings*), done_cb, data)
    __return_value
  end

  def self.propagate_event(widget, event)
    __return_value = LibGtk.propagate_event((widget.to_unsafe as LibGtk::Widget*), (event.to_unsafe as LibGdk::Event*))
    __return_value
  end

  def self.rc_add_default_file(filename)
    __return_value = LibGtk.rc_add_default_file(filename)
    __return_value
  end

  def self.rc_find_module_in_path(module_file)
    __return_value = LibGtk.rc_find_module_in_path(module_file)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_find_pixmap_in_path(settings, scanner, pixmap_file)
    __return_value = LibGtk.rc_find_pixmap_in_path((settings.to_unsafe as LibGtk::Settings*), (scanner.to_unsafe as LibGLib::Scanner*), pixmap_file)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_get_default_files
    __return_value = LibGtk.rc_get_default_files
    PointerIterator.new(__return_value) {|__item_40| raise "Expected string but got null" unless __item_40; String.new(__item_40) }
  end

  def self.rc_get_im_module_file
    __return_value = LibGtk.rc_get_im_module_file
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_get_im_module_path
    __return_value = LibGtk.rc_get_im_module_path
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_get_module_dir
    __return_value = LibGtk.rc_get_module_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_get_style(widget)
    __return_value = LibGtk.rc_get_style((widget.to_unsafe as LibGtk::Widget*))
    Gtk::Style.new(__return_value)
  end

  def self.rc_get_style_by_paths(settings, widget_path, class_path, type)
    __return_value = LibGtk.rc_get_style_by_paths((settings.to_unsafe as LibGtk::Settings*), widget_path && widget_path, class_path && class_path, UInt64.new(type))
    Gtk::Style.new(__return_value) if __return_value
  end

  def self.rc_get_theme_dir
    __return_value = LibGtk.rc_get_theme_dir
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.rc_parse(filename)
    __return_value = LibGtk.rc_parse(filename)
    __return_value
  end

  def self.rc_parse_color(scanner, color)
    __return_value = LibGtk.rc_parse_color((scanner.to_unsafe as LibGLib::Scanner*), color)
    __return_value
  end

  def self.rc_parse_color_full(scanner, style, color)
    __return_value = LibGtk.rc_parse_color_full((scanner.to_unsafe as LibGLib::Scanner*), style && (style.to_unsafe as LibGtk::RcStyle*), color)
    __return_value
  end

  def self.rc_parse_priority(scanner, priority)
    __return_value = LibGtk.rc_parse_priority((scanner.to_unsafe as LibGLib::Scanner*), (priority.to_unsafe as LibGtk::PathPriorityType*))
    __return_value
  end

  def self.rc_parse_state(scanner, state)
    __return_value = LibGtk.rc_parse_state((scanner.to_unsafe as LibGLib::Scanner*), state)
    __return_value
  end

  def self.rc_parse_string(rc_string)
    __return_value = LibGtk.rc_parse_string(rc_string)
    __return_value
  end

  def self.rc_property_parse_border(pspec, gstring, property_value)
    __return_value = LibGtk.rc_property_parse_border((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.rc_property_parse_color(pspec, gstring, property_value)
    __return_value = LibGtk.rc_property_parse_color((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.rc_property_parse_enum(pspec, gstring, property_value)
    __return_value = LibGtk.rc_property_parse_enum((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.rc_property_parse_flags(pspec, gstring, property_value)
    __return_value = LibGtk.rc_property_parse_flags((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.rc_property_parse_requisition(pspec, gstring, property_value)
    __return_value = LibGtk.rc_property_parse_requisition((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.rc_reparse_all
    __return_value = LibGtk.rc_reparse_all
    __return_value
  end

  def self.rc_reparse_all_for_settings(settings, force_load)
    __return_value = LibGtk.rc_reparse_all_for_settings((settings.to_unsafe as LibGtk::Settings*), Bool.new(force_load))
    __return_value
  end

  def self.rc_reset_styles(settings)
    __return_value = LibGtk.rc_reset_styles((settings.to_unsafe as LibGtk::Settings*))
    __return_value
  end

  def self.rc_set_default_files(filenames)
    __return_value = LibGtk.rc_set_default_files(filenames)
    __return_value
  end

  def self.recent_chooser_error_quark
    __return_value = LibGtk.recent_chooser_error_quark
    __return_value
  end

  def self.recent_manager_error_quark
    __return_value = LibGtk.recent_manager_error_quark
    __return_value
  end

  def self.render_activity(context, cr, x, y, width, height)
    __return_value = LibGtk.render_activity((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_arrow(context, cr, angle, x, y, size)
    __return_value = LibGtk.render_arrow((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(angle), Float64.new(x), Float64.new(y), Float64.new(size))
    __return_value
  end

  def self.render_background(context, cr, x, y, width, height)
    __return_value = LibGtk.render_background((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_check(context, cr, x, y, width, height)
    __return_value = LibGtk.render_check((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_expander(context, cr, x, y, width, height)
    __return_value = LibGtk.render_expander((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_extension(context, cr, x, y, width, height, gap_side)
    __return_value = LibGtk.render_extension((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height), gap_side)
    __return_value
  end

  def self.render_focus(context, cr, x, y, width, height)
    __return_value = LibGtk.render_focus((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_frame(context, cr, x, y, width, height)
    __return_value = LibGtk.render_frame((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_frame_gap(context, cr, x, y, width, height, gap_side, xy0_gap, xy1_gap)
    __return_value = LibGtk.render_frame_gap((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height), gap_side, Float64.new(xy0_gap), Float64.new(xy1_gap))
    __return_value
  end

  def self.render_handle(context, cr, x, y, width, height)
    __return_value = LibGtk.render_handle((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_icon(context, cr, pixbuf, x, y)
    __return_value = LibGtk.render_icon((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*), Float64.new(x), Float64.new(y))
    __return_value
  end

  def self.render_icon_pixbuf(context, source, size)
    __return_value = LibGtk.render_icon_pixbuf((context.to_unsafe as LibGtk::StyleContext*), (source.to_unsafe as LibGtk::IconSource*), Int32.new(size))
    GdkPixbuf::Pixbuf.new(__return_value)
  end

  def self.render_icon_surface(context, cr, surface, x, y)
    __return_value = LibGtk.render_icon_surface((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), (surface.to_unsafe as LibCairo::Surface*), Float64.new(x), Float64.new(y))
    __return_value
  end

  def self.render_insertion_cursor(context, cr, x, y, layout, index, direction)
    __return_value = LibGtk.render_insertion_cursor((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), (layout.to_unsafe as LibPango::Layout*), Int32.new(index), direction)
    __return_value
  end

  def self.render_layout(context, cr, x, y, layout)
    __return_value = LibGtk.render_layout((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), (layout.to_unsafe as LibPango::Layout*))
    __return_value
  end

  def self.render_line(context, cr, x0, y0, x1, y1)
    __return_value = LibGtk.render_line((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x0), Float64.new(y0), Float64.new(x1), Float64.new(y1))
    __return_value
  end

  def self.render_option(context, cr, x, y, width, height)
    __return_value = LibGtk.render_option((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height))
    __return_value
  end

  def self.render_slider(context, cr, x, y, width, height, orientation)
    __return_value = LibGtk.render_slider((context.to_unsafe as LibGtk::StyleContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(x), Float64.new(y), Float64.new(width), Float64.new(height), orientation)
    __return_value
  end

  def self.rgb_to_hsv(r, g, b, h, s, v)
    __return_value = LibGtk.rgb_to_hsv(Float64.new(r), Float64.new(g), Float64.new(b), Float64.new(h), Float64.new(s), Float64.new(v))
    __return_value
  end

  def self.selection_add_target(widget, selection, target, info)
    __return_value = LibGtk.selection_add_target((widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*), (target.to_unsafe as LibGdk::Atom*), UInt32.new(info))
    __return_value
  end

  def self.selection_add_targets(widget, selection, targets, ntargets)
    __return_value = LibGtk.selection_add_targets((widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*), targets, UInt32.new(ntargets))
    __return_value
  end

  def self.selection_clear_targets(widget, selection)
    __return_value = LibGtk.selection_clear_targets((widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*))
    __return_value
  end

  def self.selection_convert(widget, selection, target, time)
    __return_value = LibGtk.selection_convert((widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*), (target.to_unsafe as LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.selection_owner_set(widget, selection, time)
    __return_value = LibGtk.selection_owner_set(widget && (widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.selection_owner_set_for_display(display, widget, selection, time)
    __return_value = LibGtk.selection_owner_set_for_display((display.to_unsafe as LibGdk::Display*), widget && (widget.to_unsafe as LibGtk::Widget*), (selection.to_unsafe as LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.selection_remove_all(widget)
    __return_value = LibGtk.selection_remove_all((widget.to_unsafe as LibGtk::Widget*))
    __return_value
  end

  def self.set_debug_flags(flags)
    __return_value = LibGtk.set_debug_flags(UInt32.new(flags))
    __return_value
  end

  def self.show_uri(screen, uri, timestamp)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGtk.show_uri(screen && (screen.to_unsafe as LibGdk::Screen*), uri, UInt32.new(timestamp), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.stock_add(items, n_items)
    __return_value = LibGtk.stock_add(items, UInt32.new(n_items))
    __return_value
  end

  def self.stock_add_static(items, n_items)
    __return_value = LibGtk.stock_add_static(items, UInt32.new(n_items))
    __return_value
  end

  def self.stock_list_ids
    __return_value = LibGtk.stock_list_ids
    __return_value
  end

  def self.stock_lookup(stock_id, item)
    __return_value = LibGtk.stock_lookup(stock_id, item)
    __return_value
  end

  def self.stock_set_translate_func(domain, func : LibGtk::TranslateFunc, data, notify : LibGLib::DestroyNotify)
    __return_value = LibGtk.stock_set_translate_func(domain, func, data, notify)
    __return_value
  end

  def self.target_table_free(targets, n_targets)
    __return_value = LibGtk.target_table_free(targets, Int32.new(n_targets))
    __return_value
  end

  def self.target_table_new_from_list(list, n_targets)
    __return_value = LibGtk.target_table_new_from_list((list.to_unsafe as LibGtk::TargetList*), Int32.new(n_targets))
    PointerIterator.new(__return_value) {|__item_69| Gtk::TargetEntry.new(__item_69) }
  end

  def self.targets_include_image(targets, n_targets, writable)
    __return_value = LibGtk.targets_include_image(targets, Int32.new(n_targets), Bool.new(writable))
    __return_value
  end

  def self.targets_include_rich_text(targets, n_targets, buffer)
    __return_value = LibGtk.targets_include_rich_text(targets, Int32.new(n_targets), (buffer.to_unsafe as LibGtk::TextBuffer*))
    __return_value
  end

  def self.targets_include_text(targets, n_targets)
    __return_value = LibGtk.targets_include_text(targets, Int32.new(n_targets))
    __return_value
  end

  def self.targets_include_uri(targets, n_targets)
    __return_value = LibGtk.targets_include_uri(targets, Int32.new(n_targets))
    __return_value
  end

  def self.test_create_simple_window(window_title, dialog_text)
    __return_value = LibGtk.test_create_simple_window(window_title, dialog_text)
    Gtk::Widget.new(__return_value)
  end

  def self.test_find_label(widget, label_pattern)
    __return_value = LibGtk.test_find_label((widget.to_unsafe as LibGtk::Widget*), label_pattern)
    Gtk::Widget.new(__return_value)
  end

  def self.test_find_sibling(base_widget, widget_type)
    __return_value = LibGtk.test_find_sibling((base_widget.to_unsafe as LibGtk::Widget*), UInt64.new(widget_type))
    Gtk::Widget.new(__return_value)
  end

  def self.test_find_widget(widget, label_pattern, widget_type)
    __return_value = LibGtk.test_find_widget((widget.to_unsafe as LibGtk::Widget*), label_pattern, UInt64.new(widget_type))
    Gtk::Widget.new(__return_value)
  end

  def self.test_list_all_types(n_types)
    __return_value = LibGtk.test_list_all_types(UInt32.new(n_types))
    PointerIterator.new(__return_value) {|__item_39| __item_39 }
  end

  def self.test_register_all_types
    __return_value = LibGtk.test_register_all_types
    __return_value
  end

  def self.test_slider_get_value(widget)
    __return_value = LibGtk.test_slider_get_value((widget.to_unsafe as LibGtk::Widget*))
    __return_value
  end

  def self.test_slider_set_perc(widget, percentage)
    __return_value = LibGtk.test_slider_set_perc((widget.to_unsafe as LibGtk::Widget*), Float64.new(percentage))
    __return_value
  end

  def self.test_spin_button_click(spinner, button, upwards)
    __return_value = LibGtk.test_spin_button_click((spinner.to_unsafe as LibGtk::SpinButton*), UInt32.new(button), Bool.new(upwards))
    __return_value
  end

  def self.test_text_get(widget)
    __return_value = LibGtk.test_text_get((widget.to_unsafe as LibGtk::Widget*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.test_text_set(widget, string)
    __return_value = LibGtk.test_text_set((widget.to_unsafe as LibGtk::Widget*), string)
    __return_value
  end

  def self.test_widget_click(widget, button, modifiers)
    __return_value = LibGtk.test_widget_click((widget.to_unsafe as LibGtk::Widget*), UInt32.new(button), modifiers)
    __return_value
  end

  def self.test_widget_send_key(widget, keyval, modifiers)
    __return_value = LibGtk.test_widget_send_key((widget.to_unsafe as LibGtk::Widget*), UInt32.new(keyval), modifiers)
    __return_value
  end

  def self.test_widget_wait_for_draw(widget)
    __return_value = LibGtk.test_widget_wait_for_draw((widget.to_unsafe as LibGtk::Widget*))
    __return_value
  end

  def self.tree_get_row_drag_data(selection_data, tree_model, path)
    __return_value = LibGtk.tree_get_row_drag_data((selection_data.to_unsafe as LibGtk::SelectionData*), tree_model && (tree_model.to_unsafe as LibGtk::TreeModel*), path && (path.to_unsafe as LibGtk::TreePath*))
    __return_value
  end

  def self.tree_row_reference_deleted(proxy, path)
    __return_value = LibGtk.tree_row_reference_deleted((proxy.to_unsafe as LibGObject::Object*), (path.to_unsafe as LibGtk::TreePath*))
    __return_value
  end

  def self.tree_row_reference_inserted(proxy, path)
    __return_value = LibGtk.tree_row_reference_inserted((proxy.to_unsafe as LibGObject::Object*), (path.to_unsafe as LibGtk::TreePath*))
    __return_value
  end

  def self.tree_set_row_drag_data(selection_data, tree_model, path)
    __return_value = LibGtk.tree_set_row_drag_data((selection_data.to_unsafe as LibGtk::SelectionData*), (tree_model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*))
    __return_value
  end

  def self.true
    __return_value = LibGtk.true
    __return_value
  end
end

