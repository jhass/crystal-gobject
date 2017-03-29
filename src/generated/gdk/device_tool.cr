module Gdk
  class DeviceTool < GObject::Object
    @gdk_device_tool : LibGdk::DeviceTool*?
    def initialize(@gdk_device_tool : LibGdk::DeviceTool*)
    end

    def to_unsafe
      @gdk_device_tool.not_nil!
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

  end
end

