require "./bin"

module Gtk
  class Window < Bin
    def initialize(@gtk_window)
    end

    def to_unsafe
      @gtk_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

































    def self.new_internal(type)
      __return_value = LibGtk.window_new(type)
      Gtk::Widget.new(__return_value)
    end

    def self.default_icon_list
      __return_value = LibGtk.window_get_default_icon_list
      __return_value
    end

    def self.default_icon_name
      __return_value = LibGtk.window_get_default_icon_name
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.list_toplevels
      __return_value = LibGtk.window_list_toplevels
      __return_value
    end

    def self.set_auto_startup_notification(setting)
      __return_value = LibGtk.window_set_auto_startup_notification(setting)
      __return_value
    end

    def self.set_default_icon(icon)
      __return_value = LibGtk.window_set_default_icon((icon.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def self.default_icon_from_file=(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.window_set_default_icon_from_file(filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.set_default_icon_list(list)
      __return_value = LibGtk.window_set_default_icon_list(list)
      __return_value
    end

    def self.set_default_icon_name(name)
      __return_value = LibGtk.window_set_default_icon_name(name)
      __return_value
    end

    def self.set_interactive_debugging(enable)
      __return_value = LibGtk.window_set_interactive_debugging(enable)
      __return_value
    end

    def activate_default
      __return_value = LibGtk.window_activate_default((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def activate_focus
      __return_value = LibGtk.window_activate_focus((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def activate_key(event)
      __return_value = LibGtk.window_activate_key((to_unsafe as LibGtk::Window*), (event.to_unsafe as LibGdk::EventKey*))
      __return_value
    end

    def add_accel_group(accel_group)
      __return_value = LibGtk.window_add_accel_group((to_unsafe as LibGtk::Window*), (accel_group.to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def add_mnemonic(keyval, target)
      __return_value = LibGtk.window_add_mnemonic((to_unsafe as LibGtk::Window*), UInt32.new(keyval), (target.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def begin_move_drag(button, root_x, root_y, timestamp)
      __return_value = LibGtk.window_begin_move_drag((to_unsafe as LibGtk::Window*), Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      __return_value
    end

    def begin_resize_drag(edge, button, root_x, root_y, timestamp)
      __return_value = LibGtk.window_begin_resize_drag((to_unsafe as LibGtk::Window*), edge, Int32.new(button), Int32.new(root_x), Int32.new(root_y), UInt32.new(timestamp))
      __return_value
    end

    def close
      __return_value = LibGtk.window_close((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def deiconify
      __return_value = LibGtk.window_deiconify((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def fullscreen
      __return_value = LibGtk.window_fullscreen((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def fullscreen_on_monitor(screen, monitor)
      __return_value = LibGtk.window_fullscreen_on_monitor((to_unsafe as LibGtk::Window*), (screen.to_unsafe as LibGdk::Screen*), Int32.new(monitor))
      __return_value
    end

    def accept_focus
      __return_value = LibGtk.window_get_accept_focus((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def application
      __return_value = LibGtk.window_get_application((to_unsafe as LibGtk::Window*))
      Gtk::Application.new(__return_value)
    end

    def attached_to
      __return_value = LibGtk.window_get_attached_to((to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

    def decorated
      __return_value = LibGtk.window_get_decorated((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def default_size(width, height)
      __return_value = LibGtk.window_get_default_size((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def default_widget
      __return_value = LibGtk.window_get_default_widget((to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

    def deletable
      __return_value = LibGtk.window_get_deletable((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def destroy_with_parent
      __return_value = LibGtk.window_get_destroy_with_parent((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def focus
      __return_value = LibGtk.window_get_focus((to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

    def focus_on_map
      __return_value = LibGtk.window_get_focus_on_map((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def focus_visible
      __return_value = LibGtk.window_get_focus_visible((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def gravity
      __return_value = LibGtk.window_get_gravity((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def group
      __return_value = LibGtk.window_get_group((to_unsafe as LibGtk::Window*))
      Gtk::WindowGroup.new(__return_value)
    end

    def has_resize_grip
      __return_value = LibGtk.window_get_has_resize_grip((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def hide_titlebar_when_maximized
      __return_value = LibGtk.window_get_hide_titlebar_when_maximized((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def icon
      __return_value = LibGtk.window_get_icon((to_unsafe as LibGtk::Window*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def icon_list
      __return_value = LibGtk.window_get_icon_list((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.window_get_icon_name((to_unsafe as LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def mnemonic_modifier
      __return_value = LibGtk.window_get_mnemonic_modifier((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def mnemonics_visible
      __return_value = LibGtk.window_get_mnemonics_visible((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def modal
      __return_value = LibGtk.window_get_modal((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def opacity
      __return_value = LibGtk.window_get_opacity((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def position(root_x, root_y)
      __return_value = LibGtk.window_get_position((to_unsafe as LibGtk::Window*), Int32.new(root_x), Int32.new(root_y))
      __return_value
    end

    def resizable
      __return_value = LibGtk.window_get_resizable((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def resize_grip_area(rect)
      __return_value = LibGtk.window_get_resize_grip_area((to_unsafe as LibGtk::Window*), rect)
      __return_value
    end

    def role
      __return_value = LibGtk.window_get_role((to_unsafe as LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def screen
      __return_value = LibGtk.window_get_screen((to_unsafe as LibGtk::Window*))
      Gdk::Screen.new(__return_value)
    end

    def size(width, height)
      __return_value = LibGtk.window_get_size((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def skip_pager_hint
      __return_value = LibGtk.window_get_skip_pager_hint((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def skip_taskbar_hint
      __return_value = LibGtk.window_get_skip_taskbar_hint((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def title
      __return_value = LibGtk.window_get_title((to_unsafe as LibGtk::Window*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def titlebar
      __return_value = LibGtk.window_get_titlebar((to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

    def transient_for
      __return_value = LibGtk.window_get_transient_for((to_unsafe as LibGtk::Window*))
      Gtk::Window.new(__return_value)
    end

    def type_hint
      __return_value = LibGtk.window_get_type_hint((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def urgency_hint
      __return_value = LibGtk.window_get_urgency_hint((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def window_type
      __return_value = LibGtk.window_get_window_type((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def has_group
      __return_value = LibGtk.window_has_group((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def has_toplevel_focus
      __return_value = LibGtk.window_has_toplevel_focus((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def iconify
      __return_value = LibGtk.window_iconify((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def active?
      __return_value = LibGtk.window_is_active((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def maximized?
      __return_value = LibGtk.window_is_maximized((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def maximize
      __return_value = LibGtk.window_maximize((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def mnemonic_activate(keyval, modifier)
      __return_value = LibGtk.window_mnemonic_activate((to_unsafe as LibGtk::Window*), UInt32.new(keyval), modifier)
      __return_value
    end

    def move(x, y)
      __return_value = LibGtk.window_move((to_unsafe as LibGtk::Window*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def parse_geometry(geometry)
      __return_value = LibGtk.window_parse_geometry((to_unsafe as LibGtk::Window*), geometry)
      __return_value
    end

    def present
      __return_value = LibGtk.window_present((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def present_with_time(timestamp)
      __return_value = LibGtk.window_present_with_time((to_unsafe as LibGtk::Window*), UInt32.new(timestamp))
      __return_value
    end

    def propagate_key_event(event)
      __return_value = LibGtk.window_propagate_key_event((to_unsafe as LibGtk::Window*), (event.to_unsafe as LibGdk::EventKey*))
      __return_value
    end

    def remove_accel_group(accel_group)
      __return_value = LibGtk.window_remove_accel_group((to_unsafe as LibGtk::Window*), (accel_group.to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def remove_mnemonic(keyval, target)
      __return_value = LibGtk.window_remove_mnemonic((to_unsafe as LibGtk::Window*), UInt32.new(keyval), (target.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def reshow_with_initial_size
      __return_value = LibGtk.window_reshow_with_initial_size((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def resize(width, height)
      __return_value = LibGtk.window_resize((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def resize_grip_is_visible
      __return_value = LibGtk.window_resize_grip_is_visible((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def resize_to_geometry(width, height)
      __return_value = LibGtk.window_resize_to_geometry((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def accept_focus=(setting)
      __return_value = LibGtk.window_set_accept_focus((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def application=(application)
      __return_value = LibGtk.window_set_application((to_unsafe as LibGtk::Window*), application && (application.to_unsafe as LibGtk::Application*))
      __return_value
    end

    def attached_to=(attach_widget)
      __return_value = LibGtk.window_set_attached_to((to_unsafe as LibGtk::Window*), attach_widget && (attach_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def decorated=(setting)
      __return_value = LibGtk.window_set_decorated((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def default=(default_widget)
      __return_value = LibGtk.window_set_default((to_unsafe as LibGtk::Window*), default_widget && (default_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_default_geometry(width, height)
      __return_value = LibGtk.window_set_default_geometry((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def set_default_size(width, height)
      __return_value = LibGtk.window_set_default_size((to_unsafe as LibGtk::Window*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def deletable=(setting)
      __return_value = LibGtk.window_set_deletable((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def destroy_with_parent=(setting)
      __return_value = LibGtk.window_set_destroy_with_parent((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def focus=(focus)
      __return_value = LibGtk.window_set_focus((to_unsafe as LibGtk::Window*), focus && (focus.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def focus_on_map=(setting)
      __return_value = LibGtk.window_set_focus_on_map((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def focus_visible=(setting)
      __return_value = LibGtk.window_set_focus_visible((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def set_geometry_hints(geometry_widget, geometry, geom_mask)
      __return_value = LibGtk.window_set_geometry_hints((to_unsafe as LibGtk::Window*), geometry_widget && (geometry_widget.to_unsafe as LibGtk::Widget*), geometry && (geometry.to_unsafe as LibGdk::Geometry*), geom_mask)
      __return_value
    end

    def gravity=(gravity)
      __return_value = LibGtk.window_set_gravity((to_unsafe as LibGtk::Window*), gravity)
      __return_value
    end

    def has_resize_grip=(value)
      __return_value = LibGtk.window_set_has_resize_grip((to_unsafe as LibGtk::Window*), value)
      __return_value
    end

    def has_user_ref_count=(setting)
      __return_value = LibGtk.window_set_has_user_ref_count((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def hide_titlebar_when_maximized=(setting)
      __return_value = LibGtk.window_set_hide_titlebar_when_maximized((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def icon=(icon)
      __return_value = LibGtk.window_set_icon((to_unsafe as LibGtk::Window*), icon && (icon.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_icon_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.window_set_icon_from_file((to_unsafe as LibGtk::Window*), filename, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def icon_list=(list)
      __return_value = LibGtk.window_set_icon_list((to_unsafe as LibGtk::Window*), list)
      __return_value
    end

    def icon_name=(name)
      __return_value = LibGtk.window_set_icon_name((to_unsafe as LibGtk::Window*), name && name)
      __return_value
    end

    def keep_above=(setting)
      __return_value = LibGtk.window_set_keep_above((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def keep_below=(setting)
      __return_value = LibGtk.window_set_keep_below((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def mnemonic_modifier=(modifier)
      __return_value = LibGtk.window_set_mnemonic_modifier((to_unsafe as LibGtk::Window*), modifier)
      __return_value
    end

    def mnemonics_visible=(setting)
      __return_value = LibGtk.window_set_mnemonics_visible((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def modal=(modal)
      __return_value = LibGtk.window_set_modal((to_unsafe as LibGtk::Window*), modal)
      __return_value
    end

    def opacity=(opacity)
      __return_value = LibGtk.window_set_opacity((to_unsafe as LibGtk::Window*), Float64.new(opacity))
      __return_value
    end

    def position=(position)
      __return_value = LibGtk.window_set_position((to_unsafe as LibGtk::Window*), position)
      __return_value
    end

    def resizable=(resizable)
      __return_value = LibGtk.window_set_resizable((to_unsafe as LibGtk::Window*), resizable)
      __return_value
    end

    def role=(role)
      __return_value = LibGtk.window_set_role((to_unsafe as LibGtk::Window*), role)
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.window_set_screen((to_unsafe as LibGtk::Window*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def skip_pager_hint=(setting)
      __return_value = LibGtk.window_set_skip_pager_hint((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def skip_taskbar_hint=(setting)
      __return_value = LibGtk.window_set_skip_taskbar_hint((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def startup_id=(startup_id)
      __return_value = LibGtk.window_set_startup_id((to_unsafe as LibGtk::Window*), startup_id)
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.window_set_title((to_unsafe as LibGtk::Window*), title)
      __return_value
    end

    def titlebar=(titlebar)
      __return_value = LibGtk.window_set_titlebar((to_unsafe as LibGtk::Window*), titlebar && (titlebar.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def transient_for=(parent)
      __return_value = LibGtk.window_set_transient_for((to_unsafe as LibGtk::Window*), parent && (parent.to_unsafe as LibGtk::Window*))
      __return_value
    end

    def type_hint=(hint)
      __return_value = LibGtk.window_set_type_hint((to_unsafe as LibGtk::Window*), hint)
      __return_value
    end

    def urgency_hint=(setting)
      __return_value = LibGtk.window_set_urgency_hint((to_unsafe as LibGtk::Window*), setting)
      __return_value
    end

    def set_wmclass(wmclass_name, wmclass_class)
      __return_value = LibGtk.window_set_wmclass((to_unsafe as LibGtk::Window*), wmclass_name, wmclass_class)
      __return_value
    end

    def stick
      __return_value = LibGtk.window_stick((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def unfullscreen
      __return_value = LibGtk.window_unfullscreen((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def unmaximize
      __return_value = LibGtk.window_unmaximize((to_unsafe as LibGtk::Window*))
      __return_value
    end

    def unstick
      __return_value = LibGtk.window_unstick((to_unsafe as LibGtk::Window*))
      __return_value
    end

    alias ActivateDefaultSignal = Window -> 
    def on_activate_default(&__block : ActivateDefaultSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("activate-default", __callback)
    end

    alias ActivateFocusSignal = Window -> 
    def on_activate_focus(&__block : ActivateFocusSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("activate-focus", __callback)
    end

    alias EnableDebuggingSignal = Window, Bool -> Bool
    def on_enable_debugging(&__block : EnableDebuggingSignal)
      __callback = ->(_arg0 : LibGtk::Window*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Window.new(_arg0), _arg1)
       __return_value
      }
      connect("enable-debugging", __callback)
    end

    alias KeysChangedSignal = Window -> 
    def on_keys_changed(&__block : KeysChangedSignal)
      __callback = ->(_arg0 : LibGtk::Window*) {
       __return_value = __block.call(Window.new(_arg0))
       __return_value
      }
      connect("keys-changed", __callback)
    end

    alias SetFocusSignal = Window, Gtk::Widget -> 
    def on_set_focus(&__block : SetFocusSignal)
      __callback = ->(_arg0 : LibGtk::Window*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Window.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("set-focus", __callback)
    end

  end
end

