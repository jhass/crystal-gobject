module Gdk
  class Device < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Device*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Device*)
    end

    def associated_device
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "associated_device", gvalue)
      Gdk::Device.cast(gvalue.object)
    end

    def axes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "axes", gvalue)
      gvalue.enum
    end

    def device_manager
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "device_manager", gvalue)
      Gdk::DeviceManager.cast(gvalue.object)
    end

    def display
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "display", gvalue)
      Gdk::Display.cast(gvalue.object)
    end

    def has_cursor
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_cursor", gvalue)
      gvalue.boolean
    end

    def input_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_mode", gvalue)
      gvalue.enum
    end

    def input_source
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_source", gvalue)
      gvalue.enum
    end

    def n_axes
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "n_axes", gvalue)
      gvalue
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def num_touches
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "num_touches", gvalue)
      gvalue
    end

    def product_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "product_id", gvalue)
      gvalue.string
    end

    def seat
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "seat", gvalue)
      Gdk::Seat.cast(gvalue.object)
    end

    def tool
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tool", gvalue)
      Gdk::DeviceTool.cast(gvalue.object)
    end

    def type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "type", gvalue)
      gvalue.enum
    end

    def vendor_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "vendor_id", gvalue)
      gvalue.string
    end

    def self.grab_info_libgtk_only(display, device, grab_window, owner_events)
      __return_value = LibGdk.device_grab_info_libgtk_only(display.to_unsafe.as(LibGdk::Display*), device.to_unsafe.as(LibGdk::Device*), grab_window, owner_events)
      __return_value
    end

    def associated_device
      __return_value = LibGdk.device_get_associated_device(@pointer.as(LibGdk::Device*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def axes
      __return_value = LibGdk.device_get_axes(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def axis_use(index)
      __return_value = LibGdk.device_get_axis_use(@pointer.as(LibGdk::Device*), UInt32.new(index))
      __return_value
    end

    def device_type
      __return_value = LibGdk.device_get_device_type(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def display
      __return_value = LibGdk.device_get_display(@pointer.as(LibGdk::Device*))
      Gdk::Display.new(__return_value)
    end

    def has_cursor
      __return_value = LibGdk.device_get_has_cursor(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def key(index, keyval, modifiers : Gdk::ModifierType)
      __return_value = LibGdk.device_get_key(@pointer.as(LibGdk::Device*), UInt32.new(index), keyval, modifiers)
      __return_value
    end

    def last_event_window
      __return_value = LibGdk.device_get_last_event_window(@pointer.as(LibGdk::Device*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def mode
      __return_value = LibGdk.device_get_mode(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def n_axes
      __return_value = LibGdk.device_get_n_axes(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def n_keys
      __return_value = LibGdk.device_get_n_keys(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def name
      __return_value = LibGdk.device_get_name(@pointer.as(LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def position(screen, x, y)
      LibGdk.device_get_position(@pointer.as(LibGdk::Device*), screen, x, y)
      nil
    end

    def position_double(screen, x, y)
      LibGdk.device_get_position_double(@pointer.as(LibGdk::Device*), screen, x, y)
      nil
    end

    def product_id
      __return_value = LibGdk.device_get_product_id(@pointer.as(LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def seat
      __return_value = LibGdk.device_get_seat(@pointer.as(LibGdk::Device*))
      Gdk::Seat.new(__return_value)
    end

    def source
      __return_value = LibGdk.device_get_source(@pointer.as(LibGdk::Device*))
      __return_value
    end

    def vendor_id
      __return_value = LibGdk.device_get_vendor_id(@pointer.as(LibGdk::Device*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def window_at_position(win_x, win_y)
      __return_value = LibGdk.device_get_window_at_position(@pointer.as(LibGdk::Device*), win_x, win_y)
      Gdk::Window.new(__return_value) if __return_value
    end

    def window_at_position_double(win_x, win_y)
      __return_value = LibGdk.device_get_window_at_position_double(@pointer.as(LibGdk::Device*), win_x, win_y)
      Gdk::Window.new(__return_value) if __return_value
    end

    def grab(window, grab_ownership : Gdk::GrabOwnership, owner_events, event_mask : Gdk::EventMask, cursor, time)
      __return_value = LibGdk.device_grab(@pointer.as(LibGdk::Device*), window.to_unsafe.as(LibGdk::Window*), grab_ownership, owner_events, event_mask, cursor ? cursor.to_unsafe.as(LibGdk::Cursor*) : nil, UInt32.new(time))
      __return_value
    end

    def list_axes
      __return_value = LibGdk.device_list_axes(@pointer.as(LibGdk::Device*))
      GLib::ListIterator(Gdk::Atom, LibGdk::Atom**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_slave_devices
      __return_value = LibGdk.device_list_slave_devices(@pointer.as(LibGdk::Device*))
      GLib::ListIterator(Gdk::Device, LibGdk::Device**).new(GLib::SList.new(__return_value.as(LibGLib::List*))) if __return_value
    end

    def set_axis_use(index, use : Gdk::AxisUse)
      LibGdk.device_set_axis_use(@pointer.as(LibGdk::Device*), UInt32.new(index), use)
      nil
    end

    def set_key(index, keyval, modifiers : Gdk::ModifierType)
      LibGdk.device_set_key(@pointer.as(LibGdk::Device*), UInt32.new(index), UInt32.new(keyval), modifiers)
      nil
    end

    def mode=(mode : Gdk::InputMode)
      __return_value = LibGdk.device_set_mode(@pointer.as(LibGdk::Device*), mode)
      __return_value
    end

    def ungrab(time)
      LibGdk.device_ungrab(@pointer.as(LibGdk::Device*), UInt32.new(time))
      nil
    end

    def warp(screen, x, y)
      LibGdk.device_warp(@pointer.as(LibGdk::Device*), screen.to_unsafe.as(LibGdk::Screen*), Int32.new(x), Int32.new(y))
      nil
    end

    alias ChangedSignal = Device ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGdk::Device*) {
       __return_value = __block.call(Device.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias ToolChangedSignal = Device, Gdk::DeviceTool ->
    def on_tool_changed(&__block : ToolChangedSignal)
      __callback = ->(_arg0 : LibGdk::Device*, _arg1 : LibGdk::DeviceTool**) {
       __return_value = __block.call(Device.new(_arg0), Gdk::DeviceTool.new(_arg1))
       __return_value
      }
      connect("tool-changed", __callback)
    end

  end
end

