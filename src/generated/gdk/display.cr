module Gdk
  class Display < GObject::Object
    @gdk_display : LibGdk::Display*?
    def initialize(@gdk_display : LibGdk::Display*)
    end

    def to_unsafe
      @gdk_display.not_nil!
    end

    def self.default
      __return_value = LibGdk.display_get_default
      Gdk::Display.new(__return_value) if __return_value
    end

    def self.open(display_name)
      __return_value = LibGdk.display_open(display_name.to_unsafe)
      Gdk::Display.new(__return_value) if __return_value
    end

    def self.open_default_libgtk_only
      __return_value = LibGdk.display_open_default_libgtk_only
      Gdk::Display.new(__return_value) if __return_value
    end

    def beep
      __return_value = LibGdk.display_beep(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def close
      __return_value = LibGdk.display_close(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def device_is_grabbed(device)
      __return_value = LibGdk.display_device_is_grabbed(to_unsafe.as(LibGdk::Display*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def flush
      __return_value = LibGdk.display_flush(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def app_launch_context
      __return_value = LibGdk.display_get_app_launch_context(to_unsafe.as(LibGdk::Display*))
      Gdk::AppLaunchContext.new(__return_value)
    end

    def default_cursor_size
      __return_value = LibGdk.display_get_default_cursor_size(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def default_group
      __return_value = LibGdk.display_get_default_group(to_unsafe.as(LibGdk::Display*))
      Gdk::Window.new(__return_value)
    end

    def default_screen
      __return_value = LibGdk.display_get_default_screen(to_unsafe.as(LibGdk::Display*))
      Gdk::Screen.new(__return_value)
    end

    def default_seat
      __return_value = LibGdk.display_get_default_seat(to_unsafe.as(LibGdk::Display*))
      Gdk::Seat.new(__return_value)
    end

    def device_manager
      __return_value = LibGdk.display_get_device_manager(to_unsafe.as(LibGdk::Display*))
      Gdk::DeviceManager.new(__return_value) if __return_value
    end

    def event
      __return_value = LibGdk.display_get_event(to_unsafe.as(LibGdk::Display*))
      Gdk::Event.new(__return_value) if __return_value
    end

    def maximal_cursor_size(width, height)
      __return_value = LibGdk.display_get_maximal_cursor_size(to_unsafe.as(LibGdk::Display*), width, height)
      __return_value
    end

    def monitor(monitor_num)
      __return_value = LibGdk.display_get_monitor(to_unsafe.as(LibGdk::Display*), Int32.new(monitor_num))
      Gdk::Monitor.new(__return_value) if __return_value
    end

    def monitor_at_point(x, y)
      __return_value = LibGdk.display_get_monitor_at_point(to_unsafe.as(LibGdk::Display*), Int32.new(x), Int32.new(y))
      Gdk::Monitor.new(__return_value)
    end

    def monitor_at_window(window)
      __return_value = LibGdk.display_get_monitor_at_window(to_unsafe.as(LibGdk::Display*), window.to_unsafe.as(LibGdk::Window*))
      Gdk::Monitor.new(__return_value)
    end

    def n_monitors
      __return_value = LibGdk.display_get_n_monitors(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def n_screens
      __return_value = LibGdk.display_get_n_screens(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def name
      __return_value = LibGdk.display_get_name(to_unsafe.as(LibGdk::Display*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def pointer(screen, x, y, mask : Gdk::ModifierType?)
      __return_value = LibGdk.display_get_pointer(to_unsafe.as(LibGdk::Display*), screen, x, y, mask)
      __return_value
    end

    def primary_monitor
      __return_value = LibGdk.display_get_primary_monitor(to_unsafe.as(LibGdk::Display*))
      Gdk::Monitor.new(__return_value) if __return_value
    end

    def screen(screen_num)
      __return_value = LibGdk.display_get_screen(to_unsafe.as(LibGdk::Display*), Int32.new(screen_num))
      Gdk::Screen.new(__return_value)
    end

    def window_at_pointer(win_x, win_y)
      __return_value = LibGdk.display_get_window_at_pointer(to_unsafe.as(LibGdk::Display*), win_x, win_y)
      Gdk::Window.new(__return_value) if __return_value
    end

    def has_pending
      __return_value = LibGdk.display_has_pending(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def closed?
      __return_value = LibGdk.display_is_closed(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def keyboard_ungrab(time)
      __return_value = LibGdk.display_keyboard_ungrab(to_unsafe.as(LibGdk::Display*), UInt32.new(time))
      __return_value
    end

    def list_devices
      __return_value = LibGdk.display_list_devices(to_unsafe.as(LibGdk::Display*))
      GLib::ListIterator(Gdk::Device, LibGdk::Device*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_seats
      __return_value = LibGdk.display_list_seats(to_unsafe.as(LibGdk::Display*))
      GLib::ListIterator(Gdk::Seat, LibGdk::Seat*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def notify_startup_complete(startup_id)
      __return_value = LibGdk.display_notify_startup_complete(to_unsafe.as(LibGdk::Display*), startup_id.to_unsafe)
      __return_value
    end

    def peek_event
      __return_value = LibGdk.display_peek_event(to_unsafe.as(LibGdk::Display*))
      Gdk::Event.new(__return_value) if __return_value
    end

    def pointer_is_grabbed
      __return_value = LibGdk.display_pointer_is_grabbed(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def pointer_ungrab(time)
      __return_value = LibGdk.display_pointer_ungrab(to_unsafe.as(LibGdk::Display*), UInt32.new(time))
      __return_value
    end

    def put_event(event)
      __return_value = LibGdk.display_put_event(to_unsafe.as(LibGdk::Display*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def request_selection_notification(selection)
      __return_value = LibGdk.display_request_selection_notification(to_unsafe.as(LibGdk::Display*), selection.to_unsafe.as(LibGdk::Atom*))
      __return_value
    end

    def double_click_distance=(distance)
      __return_value = LibGdk.display_set_double_click_distance(to_unsafe.as(LibGdk::Display*), UInt32.new(distance))
      __return_value
    end

    def double_click_time=(msec)
      __return_value = LibGdk.display_set_double_click_time(to_unsafe.as(LibGdk::Display*), UInt32.new(msec))
      __return_value
    end

    def store_clipboard(clipboard_window, time, targets, n_targets)
      __return_value = LibGdk.display_store_clipboard(to_unsafe.as(LibGdk::Display*), clipboard_window.to_unsafe.as(LibGdk::Window*), UInt32.new(time), targets ? targets : nil, Int32.new(n_targets))
      __return_value
    end

    def supports_clipboard_persistence
      __return_value = LibGdk.display_supports_clipboard_persistence(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_composite
      __return_value = LibGdk.display_supports_composite(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_cursor_alpha
      __return_value = LibGdk.display_supports_cursor_alpha(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_cursor_color
      __return_value = LibGdk.display_supports_cursor_color(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_input_shapes
      __return_value = LibGdk.display_supports_input_shapes(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_selection_notification
      __return_value = LibGdk.display_supports_selection_notification(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def supports_shapes
      __return_value = LibGdk.display_supports_shapes(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def sync
      __return_value = LibGdk.display_sync(to_unsafe.as(LibGdk::Display*))
      __return_value
    end

    def warp_pointer(screen, x, y)
      __return_value = LibGdk.display_warp_pointer(to_unsafe.as(LibGdk::Display*), screen.to_unsafe.as(LibGdk::Screen*), Int32.new(x), Int32.new(y))
      __return_value
    end

    alias ClosedSignal = Display, Bool ->
    def on_closed(&__block : ClosedSignal)
      __callback = ->(_arg0 : LibGdk::Display*, _arg1 : LibGdk::Bool*) {
       __return_value = __block.call(Display.new(_arg0), _arg1)
       __return_value
      }
      connect("closed", __callback)
    end

    alias MonitorAddedSignal = Display, Gdk::Monitor ->
    def on_monitor_added(&__block : MonitorAddedSignal)
      __callback = ->(_arg0 : LibGdk::Display*, _arg1 : LibGdk::LibGdk::Monitor*) {
       __return_value = __block.call(Display.new(_arg0), Gdk::Monitor.new(_arg1))
       __return_value
      }
      connect("monitor-added", __callback)
    end

    alias MonitorRemovedSignal = Display, Gdk::Monitor ->
    def on_monitor_removed(&__block : MonitorRemovedSignal)
      __callback = ->(_arg0 : LibGdk::Display*, _arg1 : LibGdk::LibGdk::Monitor*) {
       __return_value = __block.call(Display.new(_arg0), Gdk::Monitor.new(_arg1))
       __return_value
      }
      connect("monitor-removed", __callback)
    end

    alias OpenedSignal = Display ->
    def on_opened(&__block : OpenedSignal)
      __callback = ->(_arg0 : LibGdk::Display*) {
       __return_value = __block.call(Display.new(_arg0))
       __return_value
      }
      connect("opened", __callback)
    end

    alias SeatAddedSignal = Display, Gdk::Seat ->
    def on_seat_added(&__block : SeatAddedSignal)
      __callback = ->(_arg0 : LibGdk::Display*, _arg1 : LibGdk::LibGdk::Seat*) {
       __return_value = __block.call(Display.new(_arg0), Gdk::Seat.new(_arg1))
       __return_value
      }
      connect("seat-added", __callback)
    end

    alias SeatRemovedSignal = Display, Gdk::Seat ->
    def on_seat_removed(&__block : SeatRemovedSignal)
      __callback = ->(_arg0 : LibGdk::Display*, _arg1 : LibGdk::LibGdk::Seat*) {
       __return_value = __block.call(Display.new(_arg0), Gdk::Seat.new(_arg1))
       __return_value
      }
      connect("seat-removed", __callback)
    end

  end
end

