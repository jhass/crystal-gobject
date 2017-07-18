module Gdk
  class Seat < GObject::Object
    @gdk_seat : LibGdk::Seat*?
    def initialize(@gdk_seat : LibGdk::Seat*)
    end

    def to_unsafe
      @gdk_seat.not_nil!
    end

    def display
      __return_value = LibGdk.seat_get_display(to_unsafe.as(LibGdk::Seat*))
      Gdk::Display.new(__return_value)
    end

    def capabilities
      __return_value = LibGdk.seat_get_capabilities(to_unsafe.as(LibGdk::Seat*))
      __return_value
    end

    def display
      __return_value = LibGdk.seat_get_display(to_unsafe.as(LibGdk::Seat*))
      Gdk::Display.new(__return_value)
    end

    def keyboard
      __return_value = LibGdk.seat_get_keyboard(to_unsafe.as(LibGdk::Seat*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def pointer
      __return_value = LibGdk.seat_get_pointer(to_unsafe.as(LibGdk::Seat*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def slaves(capabilities : Gdk::SeatCapabilities)
      __return_value = LibGdk.seat_get_slaves(to_unsafe.as(LibGdk::Seat*), capabilities)
      GLib::ListIterator(Gdk::Device, LibGdk::Device*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def grab(window, capabilities : Gdk::SeatCapabilities, owner_events, cursor, event, prepare_func, prepare_func_data)
      __return_value = LibGdk.seat_grab(to_unsafe.as(LibGdk::Seat*), window.to_unsafe.as(LibGdk::Window*), capabilities, owner_events, cursor ? cursor.to_unsafe.as(LibGdk::Cursor*) : nil, event ? event.to_unsafe.as(LibGdk::Event*) : nil, prepare_func ? prepare_func : nil, prepare_func_data ? prepare_func_data : nil)
      __return_value
    end

    def ungrab
      __return_value = LibGdk.seat_ungrab(to_unsafe.as(LibGdk::Seat*))
      __return_value
    end

    alias DeviceAddedSignal = Seat, Gdk::Device ->
    def on_device_added(&__block : DeviceAddedSignal)
      __callback = ->(_arg0 : LibGdk::Seat*, _arg1 : LibGdk::LibGdk::Device*) {
       __return_value = __block.call(Seat.new(_arg0), Gdk::Device.new(_arg1))
       __return_value
      }
      connect("device-added", __callback)
    end

    alias DeviceRemovedSignal = Seat, Gdk::Device ->
    def on_device_removed(&__block : DeviceRemovedSignal)
      __callback = ->(_arg0 : LibGdk::Seat*, _arg1 : LibGdk::LibGdk::Device*) {
       __return_value = __block.call(Seat.new(_arg0), Gdk::Device.new(_arg1))
       __return_value
      }
      connect("device-removed", __callback)
    end

    alias ToolAddedSignal = Seat, Gdk::DeviceTool ->
    def on_tool_added(&__block : ToolAddedSignal)
      __callback = ->(_arg0 : LibGdk::Seat*, _arg1 : LibGdk::LibGdk::DeviceTool*) {
       __return_value = __block.call(Seat.new(_arg0), Gdk::DeviceTool.new(_arg1))
       __return_value
      }
      connect("tool-added", __callback)
    end

    alias ToolRemovedSignal = Seat, Gdk::DeviceTool ->
    def on_tool_removed(&__block : ToolRemovedSignal)
      __callback = ->(_arg0 : LibGdk::Seat*, _arg1 : LibGdk::LibGdk::DeviceTool*) {
       __return_value = __block.call(Seat.new(_arg0), Gdk::DeviceTool.new(_arg1))
       __return_value
      }
      connect("tool-removed", __callback)
    end

  end
end

