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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "axes", gvalue)
      gvalue.enum
    end

    def hardware_id
      gvalue = GObject::Value.new(GObject::Type::UINT64)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hardware_id", gvalue)
      gvalue
    end

    def serial
      gvalue = GObject::Value.new(GObject::Type::UINT64)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "serial", gvalue)
      gvalue
    end

    def tool_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tool_type", gvalue)
      gvalue.enum
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

