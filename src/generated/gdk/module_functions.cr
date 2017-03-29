module Gdk
  def self.add_option_entries_libgtk_only(group)
    __return_value = LibGdk.add_option_entries_libgtk_only(group.to_unsafe.as(LibGLib::OptionGroup*))
    __return_value
  end

  def self.atom_intern(atom_name, only_if_exists)
    __return_value = LibGdk.atom_intern(atom_name.to_unsafe, only_if_exists)
    Gdk::Atom.new(__return_value)
  end

  def self.atom_intern_static_string(atom_name)
    __return_value = LibGdk.atom_intern_static_string(atom_name.to_unsafe)
    Gdk::Atom.new(__return_value)
  end

  def self.beep
    __return_value = LibGdk.beep
    __return_value
  end

  def self.cairo_create(window)
    __return_value = LibGdk.cairo_create(window.to_unsafe.as(LibGdk::Window*))
    Cairo::Context.new(__return_value)
  end

  def self.cairo_draw_from_gl(cr, window, source, source_type, buffer_scale, x, y, width, height)
    __return_value = LibGdk.cairo_draw_from_gl(cr.to_unsafe.as(LibCairo::Context*), window.to_unsafe.as(LibGdk::Window*), Int32.new(source), Int32.new(source_type), Int32.new(buffer_scale), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
    __return_value
  end

  def self.cairo_get_clip_rectangle(cr, rect)
    __return_value = LibGdk.cairo_get_clip_rectangle(cr.to_unsafe.as(LibCairo::Context*), rect)
    __return_value
  end

  def self.cairo_get_drawing_context(cr)
    __return_value = LibGdk.cairo_get_drawing_context(cr.to_unsafe.as(LibCairo::Context*))
    Gdk::DrawingContext.new(__return_value) if __return_value
  end

  def self.cairo_rectangle(cr, rectangle)
    __return_value = LibGdk.cairo_rectangle(cr.to_unsafe.as(LibCairo::Context*), rectangle.to_unsafe.as(LibGdk::Rectangle*))
    __return_value
  end

  def self.cairo_region(cr, region)
    __return_value = LibGdk.cairo_region(cr.to_unsafe.as(LibCairo::Context*), region.to_unsafe.as(LibCairo::Region*))
    __return_value
  end

  def self.cairo_region_create_from_surface(surface)
    __return_value = LibGdk.cairo_region_create_from_surface(surface.to_unsafe.as(LibCairo::Surface*))
    Cairo::Region.new(__return_value)
  end

  def self.cairo_set_source_color(cr, color)
    __return_value = LibGdk.cairo_set_source_color(cr.to_unsafe.as(LibCairo::Context*), color.to_unsafe.as(LibGdk::Color*))
    __return_value
  end

  def self.cairo_set_source_pixbuf(cr, pixbuf, pixbuf_x, pixbuf_y)
    __return_value = LibGdk.cairo_set_source_pixbuf(cr.to_unsafe.as(LibCairo::Context*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Float64.new(pixbuf_x), Float64.new(pixbuf_y))
    __return_value
  end

  def self.cairo_set_source_rgba(cr, rgba)
    __return_value = LibGdk.cairo_set_source_rgba(cr.to_unsafe.as(LibCairo::Context*), rgba.to_unsafe.as(LibGdk::RGBA*))
    __return_value
  end

  def self.cairo_set_source_window(cr, window, x, y)
    __return_value = LibGdk.cairo_set_source_window(cr.to_unsafe.as(LibCairo::Context*), window.to_unsafe.as(LibGdk::Window*), Float64.new(x), Float64.new(y))
    __return_value
  end

  def self.cairo_surface_create_from_pixbuf(pixbuf, scale, for_window)
    __return_value = LibGdk.cairo_surface_create_from_pixbuf(pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*), Int32.new(scale), for_window ? for_window.to_unsafe.as(LibGdk::Window*) : nil)
    Cairo::Surface.new(__return_value)
  end

  def self.color_parse(spec, color)
    __return_value = LibGdk.color_parse(spec.to_unsafe, color)
    __return_value
  end

  def self.disable_multidevice
    __return_value = LibGdk.disable_multidevice
    __return_value
  end

  def self.drag_abort(context, time)
    __return_value = LibGdk.drag_abort(context.to_unsafe.as(LibGdk::DragContext*), UInt32.new(time))
    __return_value
  end

  def self.drag_begin(window, targets)
    __return_value = LibGdk.drag_begin(window.to_unsafe.as(LibGdk::Window*), targets)
    Gdk::DragContext.new(__return_value)
  end

  def self.drag_begin_for_device(window, device, targets)
    __return_value = LibGdk.drag_begin_for_device(window.to_unsafe.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), targets)
    Gdk::DragContext.new(__return_value)
  end

  def self.drag_begin_from_point(window, device, targets, x_root, y_root)
    __return_value = LibGdk.drag_begin_from_point(window.to_unsafe.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), targets, Int32.new(x_root), Int32.new(y_root))
    Gdk::DragContext.new(__return_value)
  end

  def self.drag_drop(context, time)
    __return_value = LibGdk.drag_drop(context.to_unsafe.as(LibGdk::DragContext*), UInt32.new(time))
    __return_value
  end

  def self.drag_drop_done(context, success)
    __return_value = LibGdk.drag_drop_done(context.to_unsafe.as(LibGdk::DragContext*), success)
    __return_value
  end

  def self.drag_drop_succeeded(context)
    __return_value = LibGdk.drag_drop_succeeded(context.to_unsafe.as(LibGdk::DragContext*))
    __return_value
  end

  def self.drag_find_window_for_screen(context, drag_window, screen, x_root, y_root, dest_window, protocol : Gdk::DragProtocol)
    __return_value = LibGdk.drag_find_window_for_screen(context.to_unsafe.as(LibGdk::DragContext*), drag_window.to_unsafe.as(LibGdk::Window*), screen.to_unsafe.as(LibGdk::Screen*), Int32.new(x_root), Int32.new(y_root), dest_window, protocol)
    __return_value
  end

  def self.drag_get_selection(context)
    __return_value = LibGdk.drag_get_selection(context.to_unsafe.as(LibGdk::DragContext*))
    Gdk::Atom.new(__return_value)
  end

  def self.drag_motion(context, dest_window, protocol : Gdk::DragProtocol, x_root, y_root, suggested_action : Gdk::DragAction, possible_actions : Gdk::DragAction, time)
    __return_value = LibGdk.drag_motion(context.to_unsafe.as(LibGdk::DragContext*), dest_window.to_unsafe.as(LibGdk::Window*), protocol, Int32.new(x_root), Int32.new(y_root), suggested_action, possible_actions, UInt32.new(time))
    __return_value
  end

  def self.drag_status(context, action : Gdk::DragAction, time)
    __return_value = LibGdk.drag_status(context.to_unsafe.as(LibGdk::DragContext*), action, UInt32.new(time))
    __return_value
  end

  def self.drop_finish(context, success, time)
    __return_value = LibGdk.drop_finish(context.to_unsafe.as(LibGdk::DragContext*), success, UInt32.new(time))
    __return_value
  end

  def self.drop_reply(context, accepted, time)
    __return_value = LibGdk.drop_reply(context.to_unsafe.as(LibGdk::DragContext*), accepted, UInt32.new(time))
    __return_value
  end

  def self.error_trap_pop
    __return_value = LibGdk.error_trap_pop
    __return_value
  end

  def self.error_trap_pop_ignored
    __return_value = LibGdk.error_trap_pop_ignored
    __return_value
  end

  def self.error_trap_push
    __return_value = LibGdk.error_trap_push
    __return_value
  end

  def self.event_get
    __return_value = LibGdk.event_get
    Gdk::Event.new(__return_value) if __return_value
  end

  def self.event_handler_set(func, data, notify)
    __return_value = LibGdk.event_handler_set(func, data ? data : nil, notify)
    __return_value
  end

  def self.event_peek
    __return_value = LibGdk.event_peek
    Gdk::Event.new(__return_value) if __return_value
  end

  def self.event_request_motions(event)
    __return_value = LibGdk.event_request_motions(event.to_unsafe.as(LibGdk::EventMotion*))
    __return_value
  end

  def self.events_get_angle(event1, event2, angle)
    __return_value = LibGdk.events_get_angle(event1.to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), angle)
    __return_value
  end

  def self.events_get_center(event1, event2, x, y)
    __return_value = LibGdk.events_get_center(event1.to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), x, y)
    __return_value
  end

  def self.events_get_distance(event1, event2, distance)
    __return_value = LibGdk.events_get_distance(event1.to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), distance)
    __return_value
  end

  def self.events_pending
    __return_value = LibGdk.events_pending
    __return_value
  end

  def self.flush
    __return_value = LibGdk.flush
    __return_value
  end

  def self.default_root_window
    __return_value = LibGdk.get_default_root_window
    Gdk::Window.new(__return_value)
  end

  def self.display
    __return_value = LibGdk.get_display
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.display_arg_name
    __return_value = LibGdk.get_display_arg_name
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.program_class
    __return_value = LibGdk.get_program_class
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.show_events
    __return_value = LibGdk.get_show_events
    __return_value
  end

  def self.gl_error_quark
    __return_value = LibGdk.gl_error_quark
    __return_value
  end

  def self.init(argc, argv)
    __return_value = LibGdk.init(argc, argv)
    __return_value
  end

  def self.init_check(argc, argv)
    __return_value = LibGdk.init_check(argc, argv)
    __return_value
  end

  def self.keyboard_grab(window, owner_events, time)
    __return_value = LibGdk.keyboard_grab(window.to_unsafe.as(LibGdk::Window*), owner_events, UInt32.new(time))
    __return_value
  end

  def self.keyboard_ungrab(time)
    __return_value = LibGdk.keyboard_ungrab(UInt32.new(time))
    __return_value
  end

  def self.keyval_convert_case(symbol, lower, upper)
    __return_value = LibGdk.keyval_convert_case(UInt32.new(symbol), lower, upper)
    __return_value
  end

  def self.keyval_from_name(keyval_name)
    __return_value = LibGdk.keyval_from_name(keyval_name.to_unsafe)
    __return_value
  end

  def self.keyval_is_lower(keyval)
    __return_value = LibGdk.keyval_is_lower(UInt32.new(keyval))
    __return_value
  end

  def self.keyval_is_upper(keyval)
    __return_value = LibGdk.keyval_is_upper(UInt32.new(keyval))
    __return_value
  end

  def self.keyval_name(keyval)
    __return_value = LibGdk.keyval_name(UInt32.new(keyval))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.keyval_to_lower(keyval)
    __return_value = LibGdk.keyval_to_lower(UInt32.new(keyval))
    __return_value
  end

  def self.keyval_to_unicode(keyval)
    __return_value = LibGdk.keyval_to_unicode(UInt32.new(keyval))
    __return_value
  end

  def self.keyval_to_upper(keyval)
    __return_value = LibGdk.keyval_to_upper(UInt32.new(keyval))
    __return_value
  end

  def self.list_visuals
    __return_value = LibGdk.list_visuals
    GLib::ListIterator(Gdk::Visual, LibGdk::Visual*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.notify_startup_complete
    __return_value = LibGdk.notify_startup_complete
    __return_value
  end

  def self.notify_startup_complete_with_id(startup_id)
    __return_value = LibGdk.notify_startup_complete_with_id(startup_id.to_unsafe)
    __return_value
  end

  def self.offscreen_window_get_embedder(window)
    __return_value = LibGdk.offscreen_window_get_embedder(window.to_unsafe.as(LibGdk::Window*))
    Gdk::Window.new(__return_value) if __return_value
  end

  def self.offscreen_window_get_surface(window)
    __return_value = LibGdk.offscreen_window_get_surface(window.to_unsafe.as(LibGdk::Window*))
    Cairo::Surface.new(__return_value) if __return_value
  end

  def self.offscreen_window_set_embedder(window, embedder)
    __return_value = LibGdk.offscreen_window_set_embedder(window.to_unsafe.as(LibGdk::Window*), embedder.to_unsafe.as(LibGdk::Window*))
    __return_value
  end

  def self.pango_context_get
    __return_value = LibGdk.pango_context_get
    Pango::Context.new(__return_value)
  end

  def self.pango_context_get_for_display(display)
    __return_value = LibGdk.pango_context_get_for_display(display.to_unsafe.as(LibGdk::Display*))
    Pango::Context.new(__return_value)
  end

  def self.pango_context_get_for_screen(screen)
    __return_value = LibGdk.pango_context_get_for_screen(screen.to_unsafe.as(LibGdk::Screen*))
    Pango::Context.new(__return_value)
  end

  def self.parse_args(argc, argv)
    __return_value = LibGdk.parse_args(argc, argv)
    __return_value
  end

  def self.pixbuf_get_from_surface(surface, src_x, src_y, width, height)
    __return_value = LibGdk.pixbuf_get_from_surface(surface.to_unsafe.as(LibCairo::Surface*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height))
    GdkPixbuf::Pixbuf.new(__return_value) if __return_value
  end

  def self.pixbuf_get_from_window(window, src_x, src_y, width, height)
    __return_value = LibGdk.pixbuf_get_from_window(window.to_unsafe.as(LibGdk::Window*), Int32.new(src_x), Int32.new(src_y), Int32.new(width), Int32.new(height))
    GdkPixbuf::Pixbuf.new(__return_value) if __return_value
  end

  def self.pointer_grab(window, owner_events, event_mask : Gdk::EventMask, confine_to, cursor, time)
    __return_value = LibGdk.pointer_grab(window.to_unsafe.as(LibGdk::Window*), owner_events, event_mask, confine_to ? confine_to.to_unsafe.as(LibGdk::Window*) : nil, cursor ? cursor.to_unsafe.as(LibGdk::Cursor*) : nil, UInt32.new(time))
    __return_value
  end

  def self.pointer_is_grabbed
    __return_value = LibGdk.pointer_is_grabbed
    __return_value
  end

  def self.pointer_ungrab(time)
    __return_value = LibGdk.pointer_ungrab(UInt32.new(time))
    __return_value
  end

  def self.pre_parse_libgtk_only
    __return_value = LibGdk.pre_parse_libgtk_only
    __return_value
  end

  def self.property_delete(window, property)
    __return_value = LibGdk.property_delete(window.to_unsafe.as(LibGdk::Window*), property.to_unsafe.as(LibGdk::Atom*))
    __return_value
  end

  def self.property_get(window, property, type, offset, length, pdelete, actual_property_type, actual_format, actual_length, data)
    __return_value = LibGdk.property_get(window.to_unsafe.as(LibGdk::Window*), property.to_unsafe.as(LibGdk::Atom*), type.to_unsafe.as(LibGdk::Atom*), UInt64.new(offset), UInt64.new(length), Int32.new(pdelete), actual_property_type, actual_format, actual_length, data)
    __return_value
  end

  def self.query_depths(depths, count)
    __return_value = LibGdk.query_depths(depths, count)
    __return_value
  end

  def self.query_visual_types(visual_types, count)
    __return_value = LibGdk.query_visual_types(visual_types, count)
    __return_value
  end

  def self.selection_convert(requestor, selection, target, time)
    __return_value = LibGdk.selection_convert(requestor.to_unsafe.as(LibGdk::Window*), selection.to_unsafe.as(LibGdk::Atom*), target.to_unsafe.as(LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.selection_owner_get(selection)
    __return_value = LibGdk.selection_owner_get(selection.to_unsafe.as(LibGdk::Atom*))
    Gdk::Window.new(__return_value) if __return_value
  end

  def self.selection_owner_get_for_display(display, selection)
    __return_value = LibGdk.selection_owner_get_for_display(display.to_unsafe.as(LibGdk::Display*), selection.to_unsafe.as(LibGdk::Atom*))
    Gdk::Window.new(__return_value) if __return_value
  end

  def self.selection_owner_set(owner, selection, time, send_event)
    __return_value = LibGdk.selection_owner_set(owner ? owner.to_unsafe.as(LibGdk::Window*) : nil, selection.to_unsafe.as(LibGdk::Atom*), UInt32.new(time), send_event)
    __return_value
  end

  def self.selection_owner_set_for_display(display, owner, selection, time, send_event)
    __return_value = LibGdk.selection_owner_set_for_display(display.to_unsafe.as(LibGdk::Display*), owner ? owner.to_unsafe.as(LibGdk::Window*) : nil, selection.to_unsafe.as(LibGdk::Atom*), UInt32.new(time), send_event)
    __return_value
  end

  def self.selection_send_notify(requestor, selection, target, property, time)
    __return_value = LibGdk.selection_send_notify(requestor.to_unsafe.as(LibGdk::Window*), selection.to_unsafe.as(LibGdk::Atom*), target.to_unsafe.as(LibGdk::Atom*), property.to_unsafe.as(LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.selection_send_notify_for_display(display, requestor, selection, target, property, time)
    __return_value = LibGdk.selection_send_notify_for_display(display.to_unsafe.as(LibGdk::Display*), requestor.to_unsafe.as(LibGdk::Window*), selection.to_unsafe.as(LibGdk::Atom*), target.to_unsafe.as(LibGdk::Atom*), property.to_unsafe.as(LibGdk::Atom*), UInt32.new(time))
    __return_value
  end

  def self.set_allowed_backends(backends)
    __return_value = LibGdk.set_allowed_backends(backends.to_unsafe)
    __return_value
  end

  def self.set_double_click_time(msec)
    __return_value = LibGdk.set_double_click_time(UInt32.new(msec))
    __return_value
  end

  def self.set_program_class(program_class)
    __return_value = LibGdk.set_program_class(program_class.to_unsafe)
    __return_value
  end

  def self.set_show_events(show_events)
    __return_value = LibGdk.set_show_events(show_events)
    __return_value
  end

  def self.setting_get(name, value)
    __return_value = LibGdk.setting_get(name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
    __return_value
  end

  def self.synthesize_window_state(window, unset_flags : Gdk::WindowState, set_flags : Gdk::WindowState)
    __return_value = LibGdk.synthesize_window_state(window.to_unsafe.as(LibGdk::Window*), unset_flags, set_flags)
    __return_value
  end

  def self.test_render_sync(window)
    __return_value = LibGdk.test_render_sync(window.to_unsafe.as(LibGdk::Window*))
    __return_value
  end

  def self.test_simulate_button(window, x, y, button, modifiers : Gdk::ModifierType, button_pressrelease : Gdk::EventType)
    __return_value = LibGdk.test_simulate_button(window.to_unsafe.as(LibGdk::Window*), Int32.new(x), Int32.new(y), UInt32.new(button), modifiers, button_pressrelease)
    __return_value
  end

  def self.test_simulate_key(window, x, y, keyval, modifiers : Gdk::ModifierType, key_pressrelease : Gdk::EventType)
    __return_value = LibGdk.test_simulate_key(window.to_unsafe.as(LibGdk::Window*), Int32.new(x), Int32.new(y), UInt32.new(keyval), modifiers, key_pressrelease)
    __return_value
  end

  def self.text_property_to_utf8_list_for_display(display, encoding, format, text, length, list)
    __return_value = LibGdk.text_property_to_utf8_list_for_display(display.to_unsafe.as(LibGdk::Display*), encoding.to_unsafe.as(LibGdk::Atom*), Int32.new(format), text, Int32.new(length), list)
    __return_value
  end

  def self.threads_add_idle(priority, function, data, notify)
    __return_value = LibGdk.threads_add_idle(Int32.new(priority), function, data ? data : nil, notify ? notify : nil)
    __return_value
  end

  def self.threads_add_timeout(priority, interval, function, data, notify)
    __return_value = LibGdk.threads_add_timeout(Int32.new(priority), UInt32.new(interval), function, data ? data : nil, notify ? notify : nil)
    __return_value
  end

  def self.threads_add_timeout_seconds(priority, interval, function, data, notify)
    __return_value = LibGdk.threads_add_timeout_seconds(Int32.new(priority), UInt32.new(interval), function, data ? data : nil, notify ? notify : nil)
    __return_value
  end

  def self.threads_enter
    __return_value = LibGdk.threads_enter
    __return_value
  end

  def self.threads_init
    __return_value = LibGdk.threads_init
    __return_value
  end

  def self.threads_leave
    __return_value = LibGdk.threads_leave
    __return_value
  end

  def self.unicode_to_keyval(wc)
    __return_value = LibGdk.unicode_to_keyval(UInt32.new(wc))
    __return_value
  end

  def self.utf8_to_string_target(str)
    __return_value = LibGdk.utf8_to_string_target(str.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end
end

