module Gdk
  class Device < GObject::Object
    def initialize(@gdk_device)
    end

    def to_unsafe
      @gdk_device.not_nil!
    end












    def self.grab_info_libgtk_only(display, device, grab_window, owner_events)
      __return_value = LibGdk.device_grab_info_libgtk_only((display.to_unsafe as LibGdk::Display*), (device.to_unsafe as LibGdk::Device*), (grab_window.to_unsafe as LibGdk::Window*), owner_events)
      __return_value
    end

    def associated_device
      __return_value = LibGdk.device_get_associated_device((to_unsafe as LibGdk::Device*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def axis_use(index)
      __return_value = LibGdk.device_get_axis_use((to_unsafe as LibGdk::Device*), UInt32.new(index))
      __return_value
    end

    def device_type
      __return_value = LibGdk.device_get_device_type((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def display
      __return_value = LibGdk.device_get_display((to_unsafe as LibGdk::Device*))
      Gdk::Display.new(__return_value)
    end

    def has_cursor
      __return_value = LibGdk.device_get_has_cursor((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def key(index, keyval, modifiers)
      __return_value = LibGdk.device_get_key((to_unsafe as LibGdk::Device*), UInt32.new(index), UInt32.new(keyval), modifiers)
      __return_value
    end

    def last_event_window
      __return_value = LibGdk.device_get_last_event_window((to_unsafe as LibGdk::Device*))
      Gdk::Window.new(__return_value)
    end

    def mode
      __return_value = LibGdk.device_get_mode((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def n_axes
      __return_value = LibGdk.device_get_n_axes((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def n_keys
      __return_value = LibGdk.device_get_n_keys((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def name
      __return_value = LibGdk.device_get_name((to_unsafe as LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def position(screen, x, y)
      __return_value = LibGdk.device_get_position((to_unsafe as LibGdk::Device*), (screen.to_unsafe as LibGdk::Screen*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def position_double(screen, x, y)
      __return_value = LibGdk.device_get_position_double((to_unsafe as LibGdk::Device*), (screen.to_unsafe as LibGdk::Screen*), Float64.new(x), Float64.new(y))
      __return_value
    end

    def product_id
      __return_value = LibGdk.device_get_product_id((to_unsafe as LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def source
      __return_value = LibGdk.device_get_source((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def vendor_id
      __return_value = LibGdk.device_get_vendor_id((to_unsafe as LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def window_at_position(win_x, win_y)
      __return_value = LibGdk.device_get_window_at_position((to_unsafe as LibGdk::Device*), Int32.new(win_x), Int32.new(win_y))
      Gdk::Window.new(__return_value) if __return_value
    end

    def window_at_position_double(win_x, win_y)
      __return_value = LibGdk.device_get_window_at_position_double((to_unsafe as LibGdk::Device*), Float64.new(win_x), Float64.new(win_y))
      Gdk::Window.new(__return_value) if __return_value
    end

    def grab(window, grab_ownership, owner_events, event_mask, cursor, time)
      __return_value = LibGdk.device_grab((to_unsafe as LibGdk::Device*), (window.to_unsafe as LibGdk::Window*), grab_ownership, owner_events, event_mask, cursor && (cursor.to_unsafe as LibGdk::Cursor*), UInt32.new(time))
      __return_value
    end

    def list_axes
      __return_value = LibGdk.device_list_axes((to_unsafe as LibGdk::Device*))
      __return_value
    end

    def list_slave_devices
      __return_value = LibGdk.device_list_slave_devices((to_unsafe as LibGdk::Device*))
      __return_value if __return_value
    end

    def set_axis_use(index, use)
      __return_value = LibGdk.device_set_axis_use((to_unsafe as LibGdk::Device*), UInt32.new(index), use)
      __return_value
    end

    def set_key(index, keyval, modifiers)
      __return_value = LibGdk.device_set_key((to_unsafe as LibGdk::Device*), UInt32.new(index), UInt32.new(keyval), modifiers)
      __return_value
    end

    def mode=(mode)
      __return_value = LibGdk.device_set_mode((to_unsafe as LibGdk::Device*), mode)
      __return_value
    end

    def ungrab(time)
      __return_value = LibGdk.device_ungrab((to_unsafe as LibGdk::Device*), UInt32.new(time))
      __return_value
    end

    def warp(screen, x, y)
      __return_value = LibGdk.device_warp((to_unsafe as LibGdk::Device*), (screen.to_unsafe as LibGdk::Screen*), Int32.new(x), Int32.new(y))
      __return_value
    end

    alias ChangedSignal = Device -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGdk::Device*) {
       __return_value = __block.call(Device.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

