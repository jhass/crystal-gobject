module Gdk
  class DeviceTool < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::DeviceTool*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::DeviceTool*)
    end

    def axes
      __return_value = LibGdk.device_tool_get_axes(to_unsafe.as(LibGdk::DeviceTool*))
      __return_value
    end

    def hardware_id
      __return_value = LibGdk.device_tool_get_hardware_id(to_unsafe.as(LibGdk::DeviceTool*))
      __return_value
    end

    def serial
      __return_value = LibGdk.device_tool_get_serial(to_unsafe.as(LibGdk::DeviceTool*))
      __return_value
    end

    def tool_type
      __return_value = LibGdk.device_tool_get_tool_type(to_unsafe.as(LibGdk::DeviceTool*))
      __return_value
    end

    def hardware_id
      __return_value = LibGdk.device_tool_get_hardware_id(@pointer.as(LibGdk::DeviceTool*))
      __return_value
    end

    def serial
      __return_value = LibGdk.device_tool_get_serial(@pointer.as(LibGdk::DeviceTool*))
      __return_value
    end

    def tool_type
      __return_value = LibGdk.device_tool_get_tool_type(@pointer.as(LibGdk::DeviceTool*))
      __return_value
    end

  end
end

