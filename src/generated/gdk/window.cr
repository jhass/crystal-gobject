module Gdk
  class Window < GObject::Object
    def initialize @gdk_window
    end

    def to_unsafe
      @gdk_window.not_nil!
    end

    def cursor=(__value)
      LibGdk.window_set_cursor((to_unsafe as LibGdk::Window*), __value)
    end

    def self.new_internal(parent, attributes, attributes_mask)
      __return_value = LibGdk.window_new((parent.to_unsafe as LibGdk::Window*), (attributes.to_unsafe as LibGdk::WindowAttr*), attributes_mask)
      Gdk::Window.new(__return_value)
    end

    def self.at_pointer(win_x, win_y)
      __return_value = LibGdk.window_at_pointer(Int32.cast(win_x), Int32.cast(win_y))
      Gdk::Window.new(__return_value)
    end

    def self.constrain_size(geometry, flags, width, height, new_width, new_height)
      __return_value = LibGdk.window_constrain_size((geometry.to_unsafe as LibGdk::Geometry*), flags, Int32.cast(width), Int32.cast(height), Int32.cast(new_width), Int32.cast(new_height))
      __return_value
    end

    def self.process_all_updates
      __return_value = LibGdk.window_process_all_updates
      __return_value
    end

    def self.debug_updates=(setting)
      __return_value = LibGdk.window_set_debug_updates(Bool.cast(setting))
      __return_value
    end

    def beep
      __return_value = LibGdk.window_beep((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def begin_move_drag(button, root_x, root_y, timestamp)
      __return_value = LibGdk.window_begin_move_drag((to_unsafe as LibGdk::Window*), Int32.cast(button), Int32.cast(root_x), Int32.cast(root_y), UInt32.cast(timestamp))
      __return_value
    end

    def begin_move_drag_for_device(device, button, root_x, root_y, timestamp)
      __return_value = LibGdk.window_begin_move_drag_for_device((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*), Int32.cast(button), Int32.cast(root_x), Int32.cast(root_y), UInt32.cast(timestamp))
      __return_value
    end

    def begin_paint_rect(rectangle)
      __return_value = LibGdk.window_begin_paint_rect((to_unsafe as LibGdk::Window*), (rectangle.to_unsafe as LibCairo::RectangleInt*))
      __return_value
    end

    def begin_paint_region(region)
      __return_value = LibGdk.window_begin_paint_region((to_unsafe as LibGdk::Window*), (region.to_unsafe as LibCairo::Region*))
      __return_value
    end

    def begin_resize_drag(edge, button, root_x, root_y, timestamp)
      __return_value = LibGdk.window_begin_resize_drag((to_unsafe as LibGdk::Window*), edge, Int32.cast(button), Int32.cast(root_x), Int32.cast(root_y), UInt32.cast(timestamp))
      __return_value
    end

    def begin_resize_drag_for_device(edge, device, button, root_x, root_y, timestamp)
      __return_value = LibGdk.window_begin_resize_drag_for_device((to_unsafe as LibGdk::Window*), edge, (device.to_unsafe as LibGdk::Device*), Int32.cast(button), Int32.cast(root_x), Int32.cast(root_y), UInt32.cast(timestamp))
      __return_value
    end

    def configure_finished
      __return_value = LibGdk.window_configure_finished((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def coords_from_parent(parent_x, parent_y, x, y)
      __return_value = LibGdk.window_coords_from_parent((to_unsafe as LibGdk::Window*), Float64.cast(parent_x), Float64.cast(parent_y), Float64.cast(x), Float64.cast(y))
      __return_value
    end

    def coords_to_parent(x, y, parent_x, parent_y)
      __return_value = LibGdk.window_coords_to_parent((to_unsafe as LibGdk::Window*), Float64.cast(x), Float64.cast(y), Float64.cast(parent_x), Float64.cast(parent_y))
      __return_value
    end

    def create_similar_image_surface(format, width, height, scale)
      __return_value = LibGdk.window_create_similar_image_surface((to_unsafe as LibGdk::Window*), Int32.cast(format), Int32.cast(width), Int32.cast(height), Int32.cast(scale))
      Cairo::Surface.new(__return_value)
    end

    def create_similar_surface(content, width, height)
      __return_value = LibGdk.window_create_similar_surface((to_unsafe as LibGdk::Window*), content, Int32.cast(width), Int32.cast(height))
      Cairo::Surface.new(__return_value)
    end

    def deiconify
      __return_value = LibGdk.window_deiconify((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def destroy
      __return_value = LibGdk.window_destroy((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def destroy_notify
      __return_value = LibGdk.window_destroy_notify((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def enable_synchronized_configure
      __return_value = LibGdk.window_enable_synchronized_configure((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def end_paint
      __return_value = LibGdk.window_end_paint((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def ensure_native
      __return_value = LibGdk.window_ensure_native((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def flush
      __return_value = LibGdk.window_flush((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def focus(timestamp)
      __return_value = LibGdk.window_focus((to_unsafe as LibGdk::Window*), UInt32.cast(timestamp))
      __return_value
    end

    def freeze_toplevel_updates_libgtk_only
      __return_value = LibGdk.window_freeze_toplevel_updates_libgtk_only((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def freeze_updates
      __return_value = LibGdk.window_freeze_updates((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def fullscreen
      __return_value = LibGdk.window_fullscreen((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def geometry_changed
      __return_value = LibGdk.window_geometry_changed((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def accept_focus
      __return_value = LibGdk.window_get_accept_focus((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def background_pattern
      __return_value = LibGdk.window_get_background_pattern((to_unsafe as LibGdk::Window*))
      Cairo::Pattern.new(__return_value) if __return_value
    end

    def children
      __return_value = LibGdk.window_get_children((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def children_with_user_data(user_data)
      __return_value = LibGdk.window_get_children_with_user_data((to_unsafe as LibGdk::Window*), user_data)
      __return_value
    end

    def clip_region
      __return_value = LibGdk.window_get_clip_region((to_unsafe as LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def composited
      __return_value = LibGdk.window_get_composited((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def cursor
      __return_value = LibGdk.window_get_cursor((to_unsafe as LibGdk::Window*))
      Gdk::Cursor.new(__return_value) if __return_value
    end

    def decorations(decorations)
      __return_value = LibGdk.window_get_decorations((to_unsafe as LibGdk::Window*), decorations)
      __return_value
    end

    def device_cursor(device)
      __return_value = LibGdk.window_get_device_cursor((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*))
      Gdk::Cursor.new(__return_value) if __return_value
    end

    def device_events(device)
      __return_value = LibGdk.window_get_device_events((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*))
      __return_value
    end

    def device_position(device, x, y, mask)
      __return_value = LibGdk.window_get_device_position((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*), Int32.cast(x), Int32.cast(y), mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def device_position_double(device, x, y, mask)
      __return_value = LibGdk.window_get_device_position_double((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*), Float64.cast(x), Float64.cast(y), mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def display
      __return_value = LibGdk.window_get_display((to_unsafe as LibGdk::Window*))
      Gdk::Display.new(__return_value)
    end

    def drag_protocol(target)
      __return_value = LibGdk.window_get_drag_protocol((to_unsafe as LibGdk::Window*), (target.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def effective_parent
      __return_value = LibGdk.window_get_effective_parent((to_unsafe as LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def effective_toplevel
      __return_value = LibGdk.window_get_effective_toplevel((to_unsafe as LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def event_compression
      __return_value = LibGdk.window_get_event_compression((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def events
      __return_value = LibGdk.window_get_events((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def focus_on_map
      __return_value = LibGdk.window_get_focus_on_map((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def frame_clock
      __return_value = LibGdk.window_get_frame_clock((to_unsafe as LibGdk::Window*))
      Gdk::FrameClock.new(__return_value)
    end

    def frame_extents(rect)
      __return_value = LibGdk.window_get_frame_extents((to_unsafe as LibGdk::Window*), rect)
      __return_value
    end

    def fullscreen_mode
      __return_value = LibGdk.window_get_fullscreen_mode((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def geometry(x, y, width, height)
      __return_value = LibGdk.window_get_geometry((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def group
      __return_value = LibGdk.window_get_group((to_unsafe as LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def height
      __return_value = LibGdk.window_get_height((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def modal_hint
      __return_value = LibGdk.window_get_modal_hint((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def origin(x, y)
      __return_value = LibGdk.window_get_origin((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def parent
      __return_value = LibGdk.window_get_parent((to_unsafe as LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def pointer(x, y, mask)
      __return_value = LibGdk.window_get_pointer((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y), mask)
      Gdk::Window.new(__return_value) if __return_value
    end

    def position(x, y)
      __return_value = LibGdk.window_get_position((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def root_coords(x, y, root_x, root_y)
      __return_value = LibGdk.window_get_root_coords((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y), Int32.cast(root_x), Int32.cast(root_y))
      __return_value
    end

    def root_origin(x, y)
      __return_value = LibGdk.window_get_root_origin((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def scale_factor
      __return_value = LibGdk.window_get_scale_factor((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def screen
      __return_value = LibGdk.window_get_screen((to_unsafe as LibGdk::Window*))
      Gdk::Screen.new(__return_value)
    end

    def source_events(source)
      __return_value = LibGdk.window_get_source_events((to_unsafe as LibGdk::Window*), source)
      __return_value
    end

    def state
      __return_value = LibGdk.window_get_state((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def support_multidevice
      __return_value = LibGdk.window_get_support_multidevice((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def toplevel
      __return_value = LibGdk.window_get_toplevel((to_unsafe as LibGdk::Window*))
      Gdk::Window.new(__return_value)
    end

    def type_hint
      __return_value = LibGdk.window_get_type_hint((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def update_area
      __return_value = LibGdk.window_get_update_area((to_unsafe as LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def user_data(data)
      __return_value = LibGdk.window_get_user_data((to_unsafe as LibGdk::Window*), data)
      __return_value
    end

    def visible_region
      __return_value = LibGdk.window_get_visible_region((to_unsafe as LibGdk::Window*))
      Cairo::Region.new(__return_value)
    end

    def visual
      __return_value = LibGdk.window_get_visual((to_unsafe as LibGdk::Window*))
      Gdk::Visual.new(__return_value)
    end

    def width
      __return_value = LibGdk.window_get_width((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def window_type
      __return_value = LibGdk.window_get_window_type((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def has_native
      __return_value = LibGdk.window_has_native((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def hide
      __return_value = LibGdk.window_hide((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def iconify
      __return_value = LibGdk.window_iconify((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def input_shape_combine_region(shape_region, offset_x, offset_y)
      __return_value = LibGdk.window_input_shape_combine_region((to_unsafe as LibGdk::Window*), (shape_region.to_unsafe as LibCairo::Region*), Int32.cast(offset_x), Int32.cast(offset_y))
      __return_value
    end

    def invalidate_maybe_recurse(region, child_func, user_data)
      __return_value = LibGdk.window_invalidate_maybe_recurse((to_unsafe as LibGdk::Window*), (region.to_unsafe as LibCairo::Region*), child_func, user_data)
      __return_value
    end

    def invalidate_rect(rect, invalidate_children)
      __return_value = LibGdk.window_invalidate_rect((to_unsafe as LibGdk::Window*), (rect.to_unsafe as LibCairo::RectangleInt*), Bool.cast(invalidate_children))
      __return_value
    end

    def invalidate_region(region, invalidate_children)
      __return_value = LibGdk.window_invalidate_region((to_unsafe as LibGdk::Window*), (region.to_unsafe as LibCairo::Region*), Bool.cast(invalidate_children))
      __return_value
    end

    def is_destroyed
      __return_value = LibGdk.window_is_destroyed((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def is_input_only
      __return_value = LibGdk.window_is_input_only((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def is_shaped
      __return_value = LibGdk.window_is_shaped((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def is_viewable
      __return_value = LibGdk.window_is_viewable((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def is_visible
      __return_value = LibGdk.window_is_visible((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def lower
      __return_value = LibGdk.window_lower((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def maximize
      __return_value = LibGdk.window_maximize((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def merge_child_input_shapes
      __return_value = LibGdk.window_merge_child_input_shapes((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def merge_child_shapes
      __return_value = LibGdk.window_merge_child_shapes((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def move(x, y)
      __return_value = LibGdk.window_move((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def move_region(region, dx, dy)
      __return_value = LibGdk.window_move_region((to_unsafe as LibGdk::Window*), (region.to_unsafe as LibCairo::Region*), Int32.cast(dx), Int32.cast(dy))
      __return_value
    end

    def move_resize(x, y, width, height)
      __return_value = LibGdk.window_move_resize((to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def peek_children
      __return_value = LibGdk.window_peek_children((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def process_updates(update_children)
      __return_value = LibGdk.window_process_updates((to_unsafe as LibGdk::Window*), Bool.cast(update_children))
      __return_value
    end

    def raise
      __return_value = LibGdk.window_raise((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def register_dnd
      __return_value = LibGdk.window_register_dnd((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def reparent(new_parent, x, y)
      __return_value = LibGdk.window_reparent((to_unsafe as LibGdk::Window*), (new_parent.to_unsafe as LibGdk::Window*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def resize(width, height)
      __return_value = LibGdk.window_resize((to_unsafe as LibGdk::Window*), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def restack(sibling, above)
      __return_value = LibGdk.window_restack((to_unsafe as LibGdk::Window*), (sibling.to_unsafe as LibGdk::Window*), Bool.cast(above))
      __return_value
    end

    def scroll(dx, dy)
      __return_value = LibGdk.window_scroll((to_unsafe as LibGdk::Window*), Int32.cast(dx), Int32.cast(dy))
      __return_value
    end

    def accept_focus=(accept_focus)
      __return_value = LibGdk.window_set_accept_focus((to_unsafe as LibGdk::Window*), Bool.cast(accept_focus))
      __return_value
    end

    def background=(color)
      __return_value = LibGdk.window_set_background((to_unsafe as LibGdk::Window*), (color.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def background_pattern=(pattern)
      __return_value = LibGdk.window_set_background_pattern((to_unsafe as LibGdk::Window*), (pattern.to_unsafe as LibCairo::Pattern*))
      __return_value
    end

    def background_rgba=(rgba)
      __return_value = LibGdk.window_set_background_rgba((to_unsafe as LibGdk::Window*), (rgba.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def child_input_shapes=
      __return_value = LibGdk.window_set_child_input_shapes((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def child_shapes=
      __return_value = LibGdk.window_set_child_shapes((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def composited=(composited)
      __return_value = LibGdk.window_set_composited((to_unsafe as LibGdk::Window*), Bool.cast(composited))
      __return_value
    end

    def cursor=(cursor)
      __return_value = LibGdk.window_set_cursor((to_unsafe as LibGdk::Window*), (cursor.to_unsafe as LibGdk::Cursor*))
      __return_value
    end

    def decorations=(decorations)
      __return_value = LibGdk.window_set_decorations((to_unsafe as LibGdk::Window*), decorations)
      __return_value
    end

    def device_cursor=(device, cursor)
      __return_value = LibGdk.window_set_device_cursor((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*), (cursor.to_unsafe as LibGdk::Cursor*))
      __return_value
    end

    def device_events=(device, event_mask)
      __return_value = LibGdk.window_set_device_events((to_unsafe as LibGdk::Window*), (device.to_unsafe as LibGdk::Device*), event_mask)
      __return_value
    end

    def event_compression=(event_compression)
      __return_value = LibGdk.window_set_event_compression((to_unsafe as LibGdk::Window*), Bool.cast(event_compression))
      __return_value
    end

    def events=(event_mask)
      __return_value = LibGdk.window_set_events((to_unsafe as LibGdk::Window*), event_mask)
      __return_value
    end

    def focus_on_map=(focus_on_map)
      __return_value = LibGdk.window_set_focus_on_map((to_unsafe as LibGdk::Window*), Bool.cast(focus_on_map))
      __return_value
    end

    def fullscreen_mode=(mode)
      __return_value = LibGdk.window_set_fullscreen_mode((to_unsafe as LibGdk::Window*), mode)
      __return_value
    end

    def functions=(functions)
      __return_value = LibGdk.window_set_functions((to_unsafe as LibGdk::Window*), functions)
      __return_value
    end

    def geometry_hints=(geometry, geom_mask)
      __return_value = LibGdk.window_set_geometry_hints((to_unsafe as LibGdk::Window*), (geometry.to_unsafe as LibGdk::Geometry*), geom_mask)
      __return_value
    end

    def group=(leader)
      __return_value = LibGdk.window_set_group((to_unsafe as LibGdk::Window*), (leader.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def icon_list=(pixbufs)
      __return_value = LibGdk.window_set_icon_list((to_unsafe as LibGdk::Window*), pixbufs)
      __return_value
    end

    def icon_name=(name)
      __return_value = LibGdk.window_set_icon_name((to_unsafe as LibGdk::Window*), name)
      __return_value
    end

    def keep_above=(setting)
      __return_value = LibGdk.window_set_keep_above((to_unsafe as LibGdk::Window*), Bool.cast(setting))
      __return_value
    end

    def keep_below=(setting)
      __return_value = LibGdk.window_set_keep_below((to_unsafe as LibGdk::Window*), Bool.cast(setting))
      __return_value
    end

    def modal_hint=(modal)
      __return_value = LibGdk.window_set_modal_hint((to_unsafe as LibGdk::Window*), Bool.cast(modal))
      __return_value
    end

    def opacity=(opacity)
      __return_value = LibGdk.window_set_opacity((to_unsafe as LibGdk::Window*), Float64.cast(opacity))
      __return_value
    end

    def opaque_region=(region)
      __return_value = LibGdk.window_set_opaque_region((to_unsafe as LibGdk::Window*), (region.to_unsafe as LibCairo::Region*))
      __return_value
    end

    def override_redirect=(override_redirect)
      __return_value = LibGdk.window_set_override_redirect((to_unsafe as LibGdk::Window*), Bool.cast(override_redirect))
      __return_value
    end

    def role=(role)
      __return_value = LibGdk.window_set_role((to_unsafe as LibGdk::Window*), role)
      __return_value
    end

    def shadow_width=(left, right, top, bottom)
      __return_value = LibGdk.window_set_shadow_width((to_unsafe as LibGdk::Window*), Int32.cast(left), Int32.cast(right), Int32.cast(top), Int32.cast(bottom))
      __return_value
    end

    def skip_pager_hint=(skips_pager)
      __return_value = LibGdk.window_set_skip_pager_hint((to_unsafe as LibGdk::Window*), Bool.cast(skips_pager))
      __return_value
    end

    def skip_taskbar_hint=(skips_taskbar)
      __return_value = LibGdk.window_set_skip_taskbar_hint((to_unsafe as LibGdk::Window*), Bool.cast(skips_taskbar))
      __return_value
    end

    def source_events=(source, event_mask)
      __return_value = LibGdk.window_set_source_events((to_unsafe as LibGdk::Window*), source, event_mask)
      __return_value
    end

    def startup_id=(startup_id)
      __return_value = LibGdk.window_set_startup_id((to_unsafe as LibGdk::Window*), startup_id)
      __return_value
    end

    def static_gravities=(use_static)
      __return_value = LibGdk.window_set_static_gravities((to_unsafe as LibGdk::Window*), Bool.cast(use_static))
      __return_value
    end

    def support_multidevice=(support_multidevice)
      __return_value = LibGdk.window_set_support_multidevice((to_unsafe as LibGdk::Window*), Bool.cast(support_multidevice))
      __return_value
    end

    def title=(title)
      __return_value = LibGdk.window_set_title((to_unsafe as LibGdk::Window*), title)
      __return_value
    end

    def transient_for=(parent)
      __return_value = LibGdk.window_set_transient_for((to_unsafe as LibGdk::Window*), (parent.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def type_hint=(hint)
      __return_value = LibGdk.window_set_type_hint((to_unsafe as LibGdk::Window*), hint)
      __return_value
    end

    def urgency_hint=(urgent)
      __return_value = LibGdk.window_set_urgency_hint((to_unsafe as LibGdk::Window*), Bool.cast(urgent))
      __return_value
    end

    def user_data=(user_data)
      __return_value = LibGdk.window_set_user_data((to_unsafe as LibGdk::Window*), (user_data.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def shape_combine_region(shape_region, offset_x, offset_y)
      __return_value = LibGdk.window_shape_combine_region((to_unsafe as LibGdk::Window*), (shape_region.to_unsafe as LibCairo::Region*), Int32.cast(offset_x), Int32.cast(offset_y))
      __return_value
    end

    def show
      __return_value = LibGdk.window_show((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def show_unraised
      __return_value = LibGdk.window_show_unraised((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def show_window_menu(event)
      __return_value = LibGdk.window_show_window_menu((to_unsafe as LibGdk::Window*), (event.to_unsafe as LibGdk::Event*))
      __return_value
    end

    def stick
      __return_value = LibGdk.window_stick((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def thaw_toplevel_updates_libgtk_only
      __return_value = LibGdk.window_thaw_toplevel_updates_libgtk_only((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def thaw_updates
      __return_value = LibGdk.window_thaw_updates((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def unfullscreen
      __return_value = LibGdk.window_unfullscreen((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def unmaximize
      __return_value = LibGdk.window_unmaximize((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def unstick
      __return_value = LibGdk.window_unstick((to_unsafe as LibGdk::Window*))
      __return_value
    end

    def withdraw
      __return_value = LibGdk.window_withdraw((to_unsafe as LibGdk::Window*))
      __return_value
    end

  end
end

