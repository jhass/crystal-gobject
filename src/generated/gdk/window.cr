module Gdk
  class Window < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Window*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Window*)
    end

    def cursor
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor", gvalue)
      Gdk::Cursor.cast(gvalue.object)
    end

    def self.new(parent, attributes, attributes_mask : Gdk::WindowAttributesType) : self
      __return_value = LibGdk.window_new(parent ? parent.to_unsafe.as(LibGdk::Window*) : nil, attributes.to_unsafe.as(LibGdk::WindowAttr*), attributes_mask)
      cast Gdk::Window.new(__return_value)
    end

    def self.at_pointer(win_x, win_y)
      __return_value = LibGdk.window_at_pointer(win_x, win_y)
      Gdk::Window.new(__return_value)
    end

    def self.constrain_size(geometry, flags : Gdk::WindowHints, width, height, new_width, new_height)
      LibGdk.window_constrain_size(geometry.to_unsafe.as(LibGdk::Geometry*), flags, Int32.new(width), Int32.new(height), new_width, new_height)
      nil
    end

    def self.process_all_updates
      LibGdk.window_process_all_updates
      nil
    end

    def self.set_debug_updates(setting)
      LibGdk.window_set_debug_updates(setting)
      nil
    end

    def beep
      LibGdk.window_beep(@pointer.as(LibGdk::Window*))
      nil
    end

    def begin_draw_frame(region)
      __return_value = LibGdk.window_begin_draw_frame(@pointer.as(LibGdk::Window*), region.to_unsafe.as(LibCairo::Region*))
      Gdk::DrawingContext.new(__return_value)
    end

    def begin_move_drag(button, root_x, root_y, timestamp)
      LibGdk.window_begin_move_drag(@pointer.as(LibGdk::Window*), Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def begin_move_drag_for_device(device, button, root_x, root_y, timestamp)
      LibGdk.window_begin_move_drag_for_device(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def begin_paint_rect(rectangle)
      LibGdk.window_begin_paint_rect(@pointer.as(LibGdk::Window*), rectangle.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

    def begin_paint_region(region)
      LibGdk.window_begin_paint_region(@pointer.as(LibGdk::Window*), region.to_unsafe.as(LibCairo::Region*))
      nil
    end

    def begin_resize_drag(edge : Gdk::WindowEdge, button, root_x, root_y, timestamp)
      LibGdk.window_begin_resize_drag(@pointer.as(LibGdk::Window*), edge, Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def begin_resize_drag_for_device(edge : Gdk::WindowEdge, device, button, root_x, root_y, timestamp)
      LibGdk.window_begin_resize_drag_for_device(@pointer.as(LibGdk::Window*), edge, device.to_unsafe.as(LibGdk::Device*), Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      nil
    end

    def configure_finished
      LibGdk.window_configure_finished(@pointer.as(LibGdk::Window*))
      nil
    end

    def coords_from_parent(parent_x, parent_y, x, y)
      LibGdk.window_coords_from_parent(@pointer.as(LibGdk::Window*), Float64.new(parent_x), Float64.new(parent_y), x, y)
      nil
    end

    def coords_to_parent(x, y, parent_x, parent_y)
      LibGdk.window_coords_to_parent(@pointer.as(LibGdk::Window*), Float64.new(x), Float64.new(y), parent_x, parent_y)
      nil
    end

    def create_gl_context
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdk.window_create_gl_context(@pointer.as(LibGdk::Window*), pointerof(__error))
      GLib::Error.assert __error
      Gdk::GLContext.new(__return_value)
    end

    def create_similar_image_surface(format, width, height, scale)
      __return_value = LibGdk.window_create_similar_image_surface(@pointer.as(LibGdk::Window*), Int32.new(format), Int32.new(width), Int32.new(height), Int32.new(scale))
      Cairo::Surface.new(__return_value)
    end

    def create_similar_surface(content : Cairo::Content, width, height)
      __return_value = LibGdk.window_create_similar_surface(@pointer.as(LibGdk::Window*), content, Int32.new(width), Int32.new(height))
      Cairo::Surface.new(__return_value)
    end

    def deiconify
      LibGdk.window_deiconify(@pointer.as(LibGdk::Window*))
      nil
    end

    def destroy
      LibGdk.window_destroy(@pointer.as(LibGdk::Window*))
      nil
    end

    def destroy_notify
      LibGdk.window_destroy_notify(@pointer.as(LibGdk::Window*))
      nil
    end

    def enable_synchronized_configure
      LibGdk.window_enable_synchronized_configure(@pointer.as(LibGdk::Window*))
      nil
    end

    def end_draw_frame(context)
      LibGdk.window_end_draw_frame(@pointer.as(LibGdk::Window*), context.to_unsafe.as(LibGdk::DrawingContext*))
      nil
    end

    def end_paint
      LibGdk.window_end_paint(@pointer.as(LibGdk::Window*))
      nil
    end

    def ensure_native
      __return_value = LibGdk.window_ensure_native(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def flush
      LibGdk.window_flush(@pointer.as(LibGdk::Window*))
      nil
    end

    def focus(timestamp)
      LibGdk.window_focus(@pointer.as(LibGdk::Window*), UInt32.new(timestamp))
      nil
    end

    def freeze_toplevel_updates_libgtk_only
      LibGdk.window_freeze_toplevel_updates_libgtk_only(@pointer.as(LibGdk::Window*))
      nil
    end

    def freeze_updates
      LibGdk.window_freeze_updates(@pointer.as(LibGdk::Window*))
      nil
    end

    def fullscreen
      LibGdk.window_fullscreen(@pointer.as(LibGdk::Window*))
      nil
    end

    def fullscreen_on_monitor(monitor)
      LibGdk.window_fullscreen_on_monitor(@pointer.as(LibGdk::Window*), Int32.new(monitor))
      nil
    end

    def geometry_changed
      LibGdk.window_geometry_changed(@pointer.as(LibGdk::Window*))
      nil
    end

    def accept_focus
      __return_value = LibGdk.window_get_accept_focus(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def background_pattern
      __return_value = LibGdk.window_get_background_pattern(@pointer.as(LibGdk::Window*))
      Cairo::Pattern.new(__return_value) if __return_value
    end

    def children
      __return_value = LibGdk.window_get_children(@pointer.as(LibGdk::Window*))
      GLib::ListIterator(Gdk::Window, LibGdk::Window**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def children_with_user_data(user_data)
      __return_value = LibGdk.window_get_children_with_user_data(@pointer.as(LibGdk::Window*), user_data ? user_data : nil)
      GLib::ListIterator(Gdk::Window, LibGdk::Window**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def clip_region
      __return_value = LibGdk.window_get_clip_region(@pointer.as(LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def composited
      __return_value = LibGdk.window_get_composited(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def cursor
      __return_value = LibGdk.window_get_cursor(@pointer.as(LibGdk::Window*))
      Gdk::Cursor.new(__return_value) if __return_value
    end

    def decorations(decorations : Gdk::WMDecoration)
      __return_value = LibGdk.window_get_decorations(@pointer.as(LibGdk::Window*), decorations)
      __return_value
    end

    def device_cursor(device)
      __return_value = LibGdk.window_get_device_cursor(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*))
      Gdk::Cursor.new(__return_value) if __return_value
    end

    def device_events(device)
      __return_value = LibGdk.window_get_device_events(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def device_position(device, x, y, mask : Gdk::ModifierType?)
      __return_value = LibGdk.window_get_device_position(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), x, y, mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def device_position_double(device, x, y, mask : Gdk::ModifierType?)
      __return_value = LibGdk.window_get_device_position_double(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), x, y, mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def display
      __return_value = LibGdk.window_get_display(@pointer.as(LibGdk::Window*))
      Gdk::Display.new(__return_value)
    end

    def drag_protocol(target)
      __return_value = LibGdk.window_get_drag_protocol(@pointer.as(LibGdk::Window*), target)
      __return_value
    end

    def effective_parent
      __return_value = LibGdk.window_get_effective_parent(@pointer.as(LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def effective_toplevel
      __return_value = LibGdk.window_get_effective_toplevel(@pointer.as(LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def event_compression
      __return_value = LibGdk.window_get_event_compression(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def events
      __return_value = LibGdk.window_get_events(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def focus_on_map
      __return_value = LibGdk.window_get_focus_on_map(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def frame_clock
      __return_value = LibGdk.window_get_frame_clock(@pointer.as(LibGdk::Window*))
      Gdk::FrameClock.new(__return_value)
    end

    def frame_extents(rect)
      LibGdk.window_get_frame_extents(@pointer.as(LibGdk::Window*), rect)
      nil
    end

    def fullscreen_mode
      __return_value = LibGdk.window_get_fullscreen_mode(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def geometry(x, y, width, height)
      LibGdk.window_get_geometry(@pointer.as(LibGdk::Window*), x, y, width, height)
      nil
    end

    def group
      __return_value = LibGdk.window_get_group(@pointer.as(LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def height
      __return_value = LibGdk.window_get_height(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def modal_hint
      __return_value = LibGdk.window_get_modal_hint(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def origin(x, y)
      __return_value = LibGdk.window_get_origin(@pointer.as(LibGdk::Window*), x, y)
      __return_value
    end

    def parent
      __return_value = LibGdk.window_get_parent(@pointer.as(LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def pass_through
      __return_value = LibGdk.window_get_pass_through(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def pointer(x, y, mask : Gdk::ModifierType?)
      __return_value = LibGdk.window_get_pointer(@pointer.as(LibGdk::Window*), x, y, mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def position(x, y)
      LibGdk.window_get_position(@pointer.as(LibGdk::Window*), x, y)
      nil
    end

    def root_coords(x, y, root_x, root_y)
      LibGdk.window_get_root_coords(@pointer.as(LibGdk::Window*), Int32.new(x), Int32.new(y), root_x, root_y)
      nil
    end

    def root_origin(x, y)
      LibGdk.window_get_root_origin(@pointer.as(LibGdk::Window*), x, y)
      nil
    end

    def scale_factor
      __return_value = LibGdk.window_get_scale_factor(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def screen
      __return_value = LibGdk.window_get_screen(@pointer.as(LibGdk::Window*))
      Gdk::Screen.new(__return_value)
    end

    def source_events(source : Gdk::InputSource)
      __return_value = LibGdk.window_get_source_events(@pointer.as(LibGdk::Window*), source)
      __return_value
    end

    def state
      __return_value = LibGdk.window_get_state(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def support_multidevice
      __return_value = LibGdk.window_get_support_multidevice(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def toplevel
      __return_value = LibGdk.window_get_toplevel(@pointer.as(LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def type_hint
      __return_value = LibGdk.window_get_type_hint(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def update_area
      __return_value = LibGdk.window_get_update_area(@pointer.as(LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def user_data(data)
      LibGdk.window_get_user_data(@pointer.as(LibGdk::Window*), data)
      nil
    end

    def visible_region
      __return_value = LibGdk.window_get_visible_region(@pointer.as(LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def visual
      __return_value = LibGdk.window_get_visual(@pointer.as(LibGdk::Window*))
      Gdk::Visual.new(__return_value)
    end

    def width
      __return_value = LibGdk.window_get_width(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def window_type
      __return_value = LibGdk.window_get_window_type(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def has_native
      __return_value = LibGdk.window_has_native(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def hide
      LibGdk.window_hide(@pointer.as(LibGdk::Window*))
      nil
    end

    def iconify
      LibGdk.window_iconify(@pointer.as(LibGdk::Window*))
      nil
    end

    def input_shape_combine_region(shape_region, offset_x, offset_y)
      LibGdk.window_input_shape_combine_region(@pointer.as(LibGdk::Window*), shape_region.to_unsafe.as(LibCairo::Region*), Int32.new(offset_x), Int32.new(offset_y))
      nil
    end

    def invalidate_maybe_recurse(region, child_func, user_data)
      LibGdk.window_invalidate_maybe_recurse(@pointer.as(LibGdk::Window*), region.to_unsafe.as(LibCairo::Region*), child_func ? child_func : nil, user_data ? user_data : nil)
      nil
    end

    def invalidate_rect(rect, invalidate_children)
      LibGdk.window_invalidate_rect(@pointer.as(LibGdk::Window*), rect ? rect.to_unsafe.as(LibGdk::Rectangle*) : nil, invalidate_children)
      nil
    end

    def invalidate_region(region, invalidate_children)
      LibGdk.window_invalidate_region(@pointer.as(LibGdk::Window*), region.to_unsafe.as(LibCairo::Region*), invalidate_children)
      nil
    end

    def destroyed?
      __return_value = LibGdk.window_is_destroyed(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def input_only?
      __return_value = LibGdk.window_is_input_only(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def shaped?
      __return_value = LibGdk.window_is_shaped(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def viewable?
      __return_value = LibGdk.window_is_viewable(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def visible?
      __return_value = LibGdk.window_is_visible(@pointer.as(LibGdk::Window*))
      __return_value
    end

    def lower
      LibGdk.window_lower(@pointer.as(LibGdk::Window*))
      nil
    end

    def mark_paint_from_clip(cr)
      LibGdk.window_mark_paint_from_clip(@pointer.as(LibGdk::Window*), cr.to_unsafe.as(LibCairo::Context*))
      nil
    end

    def maximize
      LibGdk.window_maximize(@pointer.as(LibGdk::Window*))
      nil
    end

    def merge_child_input_shapes
      LibGdk.window_merge_child_input_shapes(@pointer.as(LibGdk::Window*))
      nil
    end

    def merge_child_shapes
      LibGdk.window_merge_child_shapes(@pointer.as(LibGdk::Window*))
      nil
    end

    def move(x, y)
      LibGdk.window_move(@pointer.as(LibGdk::Window*), Int32.new(x), Int32.new(y))
      nil
    end

    def move_region(region, dx, dy)
      LibGdk.window_move_region(@pointer.as(LibGdk::Window*), region.to_unsafe.as(LibCairo::Region*), Int32.new(dx), Int32.new(dy))
      nil
    end

    def move_resize(x, y, width, height)
      LibGdk.window_move_resize(@pointer.as(LibGdk::Window*), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      nil
    end

    def move_to_rect(rect, rect_anchor : Gdk::Gravity, window_anchor : Gdk::Gravity, anchor_hints : Gdk::AnchorHints, rect_anchor_dx, rect_anchor_dy)
      LibGdk.window_move_to_rect(@pointer.as(LibGdk::Window*), rect.to_unsafe.as(LibGdk::Rectangle*), rect_anchor, window_anchor, anchor_hints, Int32.new(rect_anchor_dx), Int32.new(rect_anchor_dy))
      nil
    end

    def peek_children
      __return_value = LibGdk.window_peek_children(@pointer.as(LibGdk::Window*))
      GLib::ListIterator(Gdk::Window, LibGdk::Window**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def process_updates(update_children)
      LibGdk.window_process_updates(@pointer.as(LibGdk::Window*), update_children)
      nil
    end

    def raise
      LibGdk.window_raise(@pointer.as(LibGdk::Window*))
      nil
    end

    def register_dnd
      LibGdk.window_register_dnd(@pointer.as(LibGdk::Window*))
      nil
    end

    def reparent(new_parent, x, y)
      LibGdk.window_reparent(@pointer.as(LibGdk::Window*), new_parent.to_unsafe.as(LibGdk::Window*), Int32.new(x), Int32.new(y))
      nil
    end

    def resize(width, height)
      LibGdk.window_resize(@pointer.as(LibGdk::Window*), Int32.new(width), Int32.new(height))
      nil
    end

    def restack(sibling, above)
      LibGdk.window_restack(@pointer.as(LibGdk::Window*), sibling ? sibling.to_unsafe.as(LibGdk::Window*) : nil, above)
      nil
    end

    def scroll(dx, dy)
      LibGdk.window_scroll(@pointer.as(LibGdk::Window*), Int32.new(dx), Int32.new(dy))
      nil
    end

    def accept_focus=(accept_focus)
      LibGdk.window_set_accept_focus(@pointer.as(LibGdk::Window*), accept_focus)
      nil
    end

    def background=(color)
      LibGdk.window_set_background(@pointer.as(LibGdk::Window*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def background_pattern=(pattern)
      LibGdk.window_set_background_pattern(@pointer.as(LibGdk::Window*), pattern ? pattern.to_unsafe.as(LibCairo::Pattern*) : nil)
      nil
    end

    def background_rgba=(rgba)
      LibGdk.window_set_background_rgba(@pointer.as(LibGdk::Window*), rgba.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    def set_child_input_shapes
      LibGdk.window_set_child_input_shapes(@pointer.as(LibGdk::Window*))
      nil
    end

    def set_child_shapes
      LibGdk.window_set_child_shapes(@pointer.as(LibGdk::Window*))
      nil
    end

    def composited=(composited)
      LibGdk.window_set_composited(@pointer.as(LibGdk::Window*), composited)
      nil
    end

    def cursor=(cursor)
      LibGdk.window_set_cursor(@pointer.as(LibGdk::Window*), cursor ? cursor.to_unsafe.as(LibGdk::Cursor*) : nil)
      nil
    end

    def decorations=(decorations : Gdk::WMDecoration)
      LibGdk.window_set_decorations(@pointer.as(LibGdk::Window*), decorations)
      nil
    end

    def set_device_cursor(device, cursor)
      LibGdk.window_set_device_cursor(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), cursor.to_unsafe.as(LibGdk::Cursor*))
      nil
    end

    def set_device_events(device, event_mask : Gdk::EventMask)
      LibGdk.window_set_device_events(@pointer.as(LibGdk::Window*), device.to_unsafe.as(LibGdk::Device*), event_mask)
      nil
    end

    def event_compression=(event_compression)
      LibGdk.window_set_event_compression(@pointer.as(LibGdk::Window*), event_compression)
      nil
    end

    def events=(event_mask : Gdk::EventMask)
      LibGdk.window_set_events(@pointer.as(LibGdk::Window*), event_mask)
      nil
    end

    def focus_on_map=(focus_on_map)
      LibGdk.window_set_focus_on_map(@pointer.as(LibGdk::Window*), focus_on_map)
      nil
    end

    def fullscreen_mode=(mode : Gdk::FullscreenMode)
      LibGdk.window_set_fullscreen_mode(@pointer.as(LibGdk::Window*), mode)
      nil
    end

    def functions=(functions : Gdk::WMFunction)
      LibGdk.window_set_functions(@pointer.as(LibGdk::Window*), functions)
      nil
    end

    def set_geometry_hints(geometry, geom_mask : Gdk::WindowHints)
      LibGdk.window_set_geometry_hints(@pointer.as(LibGdk::Window*), geometry.to_unsafe.as(LibGdk::Geometry*), geom_mask)
      nil
    end

    def group=(leader)
      LibGdk.window_set_group(@pointer.as(LibGdk::Window*), leader ? leader.to_unsafe.as(LibGdk::Window*) : nil)
      nil
    end

    def icon_list=(pixbufs)
      LibGdk.window_set_icon_list(@pointer.as(LibGdk::Window*), pixbufs)
      nil
    end

    def icon_name=(name)
      LibGdk.window_set_icon_name(@pointer.as(LibGdk::Window*), name ? name.to_unsafe : nil)
      nil
    end

    def keep_above=(setting)
      LibGdk.window_set_keep_above(@pointer.as(LibGdk::Window*), setting)
      nil
    end

    def keep_below=(setting)
      LibGdk.window_set_keep_below(@pointer.as(LibGdk::Window*), setting)
      nil
    end

    def modal_hint=(modal)
      LibGdk.window_set_modal_hint(@pointer.as(LibGdk::Window*), modal)
      nil
    end

    def opacity=(opacity)
      LibGdk.window_set_opacity(@pointer.as(LibGdk::Window*), Float64.new(opacity))
      nil
    end

    def opaque_region=(region)
      LibGdk.window_set_opaque_region(@pointer.as(LibGdk::Window*), region ? region.to_unsafe.as(LibCairo::Region*) : nil)
      nil
    end

    def override_redirect=(override_redirect)
      LibGdk.window_set_override_redirect(@pointer.as(LibGdk::Window*), override_redirect)
      nil
    end

    def pass_through=(pass_through)
      LibGdk.window_set_pass_through(@pointer.as(LibGdk::Window*), pass_through)
      nil
    end

    def role=(role)
      LibGdk.window_set_role(@pointer.as(LibGdk::Window*), role.to_unsafe)
      nil
    end

    def set_shadow_width(left, right, top, bottom)
      LibGdk.window_set_shadow_width(@pointer.as(LibGdk::Window*), Int32.new(left), Int32.new(right), Int32.new(top), Int32.new(bottom))
      nil
    end

    def skip_pager_hint=(skips_pager)
      LibGdk.window_set_skip_pager_hint(@pointer.as(LibGdk::Window*), skips_pager)
      nil
    end

    def skip_taskbar_hint=(skips_taskbar)
      LibGdk.window_set_skip_taskbar_hint(@pointer.as(LibGdk::Window*), skips_taskbar)
      nil
    end

    def set_source_events(source : Gdk::InputSource, event_mask : Gdk::EventMask)
      LibGdk.window_set_source_events(@pointer.as(LibGdk::Window*), source, event_mask)
      nil
    end

    def startup_id=(startup_id)
      LibGdk.window_set_startup_id(@pointer.as(LibGdk::Window*), startup_id.to_unsafe)
      nil
    end

    def static_gravities=(use_static)
      __return_value = LibGdk.window_set_static_gravities(@pointer.as(LibGdk::Window*), use_static)
      __return_value
    end

    def support_multidevice=(support_multidevice)
      LibGdk.window_set_support_multidevice(@pointer.as(LibGdk::Window*), support_multidevice)
      nil
    end

    def title=(title)
      LibGdk.window_set_title(@pointer.as(LibGdk::Window*), title.to_unsafe)
      nil
    end

    def transient_for=(parent)
      LibGdk.window_set_transient_for(@pointer.as(LibGdk::Window*), parent.to_unsafe.as(LibGdk::Window*))
      nil
    end

    def type_hint=(hint : Gdk::WindowTypeHint)
      LibGdk.window_set_type_hint(@pointer.as(LibGdk::Window*), hint)
      nil
    end

    def urgency_hint=(urgent)
      LibGdk.window_set_urgency_hint(@pointer.as(LibGdk::Window*), urgent)
      nil
    end

    def user_data=(user_data)
      LibGdk.window_set_user_data(@pointer.as(LibGdk::Window*), user_data ? user_data.to_unsafe.as(LibGObject::Object*) : nil)
      nil
    end

    def shape_combine_region(shape_region, offset_x, offset_y)
      LibGdk.window_shape_combine_region(@pointer.as(LibGdk::Window*), shape_region ? shape_region.to_unsafe.as(LibCairo::Region*) : nil, Int32.new(offset_x), Int32.new(offset_y))
      nil
    end

    def show
      LibGdk.window_show(@pointer.as(LibGdk::Window*))
      nil
    end

    def show_unraised
      LibGdk.window_show_unraised(@pointer.as(LibGdk::Window*))
      nil
    end

    def show_window_menu(event)
      __return_value = LibGdk.window_show_window_menu(@pointer.as(LibGdk::Window*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def stick
      LibGdk.window_stick(@pointer.as(LibGdk::Window*))
      nil
    end

    def thaw_toplevel_updates_libgtk_only
      LibGdk.window_thaw_toplevel_updates_libgtk_only(@pointer.as(LibGdk::Window*))
      nil
    end

    def thaw_updates
      LibGdk.window_thaw_updates(@pointer.as(LibGdk::Window*))
      nil
    end

    def unfullscreen
      LibGdk.window_unfullscreen(@pointer.as(LibGdk::Window*))
      nil
    end

    def unmaximize
      LibGdk.window_unmaximize(@pointer.as(LibGdk::Window*))
      nil
    end

    def unstick
      LibGdk.window_unstick(@pointer.as(LibGdk::Window*))
      nil
    end

    def withdraw
      LibGdk.window_withdraw(@pointer.as(LibGdk::Window*))
      nil
    end

    alias CreateSurfaceSignal = Window, Int32, Int32 -> Cairo::Surface
    def on_create_surface(&__block : CreateSurfaceSignal)
      __callback = ->(_arg0 : LibGdk::Window*, _arg1 : LibGdk::Int32*, _arg2 : LibGdk::Int32*) {
       __return_value = __block.call(Window.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("create-surface", __callback)
    end

    alias FromEmbedderSignal = Window, Float64, Float64, Float64, Float64 ->
    def on_from_embedder(&__block : FromEmbedderSignal)
      __callback = ->(_arg0 : LibGdk::Window*, _arg1 : LibGdk::Float64*, _arg2 : LibGdk::Float64*, _arg3 : LibGdk::Float64*, _arg4 : LibGdk::Float64*) {
       __return_value = __block.call(Window.new(_arg0), _arg1, _arg2, _arg3, _arg4)
       __return_value
      }
      connect("from-embedder", __callback)
    end

    alias MovedToRectSignal = Window, Void*, Void*, Bool, Bool ->
    def on_moved_to_rect(&__block : MovedToRectSignal)
      __callback = ->(_arg0 : LibGdk::Window*, _arg1 : LibGdk::Void**, _arg2 : LibGdk::Void**, _arg3 : LibGdk::Bool*, _arg4 : LibGdk::Bool*) {
       __return_value = __block.call(Window.new(_arg0), _arg1, _arg2, _arg3, _arg4)
       __return_value
      }
      connect("moved-to-rect", __callback)
    end

    alias PickEmbeddedChildSignal = Window, Float64, Float64 -> Gdk::Window
    def on_pick_embedded_child(&__block : PickEmbeddedChildSignal)
      __callback = ->(_arg0 : LibGdk::Window*, _arg1 : LibGdk::Float64*, _arg2 : LibGdk::Float64*) {
       __return_value = __block.call(Window.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("pick-embedded-child", __callback)
    end

    alias ToEmbedderSignal = Window, Float64, Float64, Float64, Float64 ->
    def on_to_embedder(&__block : ToEmbedderSignal)
      __callback = ->(_arg0 : LibGdk::Window*, _arg1 : LibGdk::Float64*, _arg2 : LibGdk::Float64*, _arg3 : LibGdk::Float64*, _arg4 : LibGdk::Float64*) {
       __return_value = __block.call(Window.new(_arg0), _arg1, _arg2, _arg3, _arg4)
       __return_value
      }
      connect("to-embedder", __callback)
    end

  end
end

