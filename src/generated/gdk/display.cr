module Gdk
  class Display < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Display*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Display*)
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
      LibGdk.display_beep(@pointer.as(LibGdk::Display*))
      nil
    end

    def close
      LibGdk.display_close(@pointer.as(LibGdk::Display*))
      nil
    end

    def device_is_grabbed(device)
      __return_value = LibGdk.display_device_is_grabbed(@pointer.as(LibGdk::Display*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def flush
      LibGdk.display_flush(@pointer.as(LibGdk::Display*))
      nil
    end

    def app_launch_context
      __return_value = LibGdk.display_get_app_launch_context(@pointer.as(LibGdk::Display*))
      Gdk::AppLaunchContext.new(__return_value)
    end

    def default_cursor_size
      __return_value = LibGdk.display_get_default_cursor_size(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def default_group
      __return_value = LibGdk.display_get_default_group(@pointer.as(LibGdk::Display*))
      Gdk::Window.new(__return_value)
    end

    def default_screen
      __return_value = LibGdk.display_get_default_screen(@pointer.as(LibGdk::Display*))
      Gdk::Screen.new(__return_value)
    end

    def default_seat
      __return_value = LibGdk.display_get_default_seat(@pointer.as(LibGdk::Display*))
      Gdk::Seat.new(__return_value)
    end

    def device_manager
      __return_value = LibGdk.display_get_device_manager(@pointer.as(LibGdk::Display*))
      Gdk::DeviceManager.new(__return_value) if __return_value
    end

    def event
      __return_value = LibGdk.display_get_event(@pointer.as(LibGdk::Display*))
      Gdk::Event.new(__return_value) if __return_value
    end

    def maximal_cursor_size(width, height)
      LibGdk.display_get_maximal_cursor_size(@pointer.as(LibGdk::Display*), width, height)
      nil
    end

    def monitor(monitor_num)
      __return_value = LibGdk.display_get_monitor(@pointer.as(LibGdk::Display*), Int32.new(monitor_num))
      Gdk::Monitor.new(__return_value) if __return_value
    end

    def monitor_at_point(x, y)
      __return_value = LibGdk.display_get_monitor_at_point(@pointer.as(LibGdk::Display*), Int32.new(x), Int32.new(y))
      Gdk::Monitor.new(__return_value)
    end

    def monitor_at_window(window)
      __return_value = LibGdk.display_get_monitor_at_window(@pointer.as(LibGdk::Display*), window.to_unsafe.as(LibGdk::Window*))
      Gdk::Monitor.new(__return_value)
    end

    def n_monitors
      __return_value = LibGdk.display_get_n_monitors(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def n_screens
      __return_value = LibGdk.display_get_n_screens(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def name
      __return_value = LibGdk.display_get_name(@pointer.as(LibGdk::Display*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def pointer(screen, x, y, mask : Gdk::ModifierType?)
      LibGdk.display_get_pointer(@pointer.as(LibGdk::Display*), screen, x, y, mask)
      nil
    end

    def primary_monitor
      __return_value = LibGdk.display_get_primary_monitor(@pointer.as(LibGdk::Display*))
      Gdk::Monitor.new(__return_value) if __return_value
    end

    def screen(screen_num)
      __return_value = LibGdk.display_get_screen(@pointer.as(LibGdk::Display*), Int32.new(screen_num))
      Gdk::Screen.new(__return_value)
    end

    def window_at_pointer(win_x, win_y)
      __return_value = LibGdk.display_get_window_at_pointer(@pointer.as(LibGdk::Display*), win_x, win_y)
      Gdk::Window.new(__return_value) if __return_value
    end

    def has_pending
      __return_value = LibGdk.display_has_pending(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def closed?
      __return_value = LibGdk.display_is_closed(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def keyboard_ungrab(time)
      LibGdk.display_keyboard_ungrab(@pointer.as(LibGdk::Display*), UInt32.new(time))
      nil
    end

    def list_devices
      __return_value = LibGdk.display_list_devices(@pointer.as(LibGdk::Display*))
      GLib::ListIterator(Gdk::Device, LibGdk::Device*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_seats
      __return_value = LibGdk.display_list_seats(@pointer.as(LibGdk::Display*))
      GLib::ListIterator(Gdk::Seat, LibGdk::Seat*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def notify_startup_complete(startup_id)
      LibGdk.display_notify_startup_complete(@pointer.as(LibGdk::Display*), startup_id.to_unsafe)
      nil
    end

    def peek_event
      __return_value = LibGdk.display_peek_event(@pointer.as(LibGdk::Display*))
      Gdk::Event.new(__return_value) if __return_value
    end

    def pointer_is_grabbed
      __return_value = LibGdk.display_pointer_is_grabbed(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def pointer_ungrab(time)
      LibGdk.display_pointer_ungrab(@pointer.as(LibGdk::Display*), UInt32.new(time))
      nil
    end

    def put_event(event)
      LibGdk.display_put_event(@pointer.as(LibGdk::Display*), event.to_unsafe.as(LibGdk::Event*))
      nil
    end

    def request_selection_notification(selection)
      __return_value = LibGdk.display_request_selection_notification(@pointer.as(LibGdk::Display*), selection.to_unsafe.as(LibGdk::Atom*))
      __return_value
    end

    def double_click_distance=(distance)
      LibGdk.display_set_double_click_distance(@pointer.as(LibGdk::Display*), UInt32.new(distance))
      nil
    end

    def double_click_time=(msec)
      LibGdk.display_set_double_click_time(@pointer.as(LibGdk::Display*), UInt32.new(msec))
      nil
    end

    def store_clipboard(clipboard_window, time, targets, n_targets)
      LibGdk.display_store_clipboard(@pointer.as(LibGdk::Display*), clipboard_window.to_unsafe.as(LibGdk::Window*), UInt32.new(time), targets ? targets : nil, Int32.new(n_targets))
      nil
    end

    def supports_clipboard_persistence
      __return_value = LibGdk.display_supports_clipboard_persistence(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_composite
      __return_value = LibGdk.display_supports_composite(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_cursor_alpha
      __return_value = LibGdk.display_supports_cursor_alpha(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_cursor_color
      __return_value = LibGdk.display_supports_cursor_color(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_input_shapes
      __return_value = LibGdk.display_supports_input_shapes(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_selection_notification
      __return_value = LibGdk.display_supports_selection_notification(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def supports_shapes
      __return_value = LibGdk.display_supports_shapes(@pointer.as(LibGdk::Display*))
      __return_value
    end

    def sync
      LibGdk.display_sync(@pointer.as(LibGdk::Display*))
      nil
    end

    def warp_pointer(screen, x, y)
      LibGdk.display_warp_pointer(@pointer.as(LibGdk::Display*), screen.to_unsafe.as(LibGdk::Screen*), Int32.new(x), Int32.new(y))
      nil
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

