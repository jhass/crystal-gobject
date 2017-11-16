require "./object"

module Gst
  class Device < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Device*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Device*)
    end

    def caps
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "caps", gvalue)
      Gst::Caps.cast(gvalue.object)
    end

    def device_class
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "device_class", gvalue)
      gvalue.string
    end

    def display_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "display_name", gvalue)
      gvalue.string
    end

    def properties
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "properties", gvalue)
      Gst::Structure.cast(gvalue.object)
    end

    def create_element(name)
      __return_value = LibGst.device_create_element(@pointer.as(LibGst::Device*), name ? name.to_unsafe : nil)
      Gst::Element.new(__return_value)
    end

    def caps
      __return_value = LibGst.device_get_caps(@pointer.as(LibGst::Device*))
      Gst::Caps.new(__return_value)
    end

    def device_class
      __return_value = LibGst.device_get_device_class(@pointer.as(LibGst::Device*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def display_name
      __return_value = LibGst.device_get_display_name(@pointer.as(LibGst::Device*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def properties
      __return_value = LibGst.device_get_properties(@pointer.as(LibGst::Device*))
      Gst::Structure.new(__return_value)
    end

    def has_classes(classes)
      __return_value = LibGst.device_has_classes(@pointer.as(LibGst::Device*), classes.to_unsafe)
      __return_value
    end

    def has_classesv(classes)
      __return_value = LibGst.device_has_classesv(@pointer.as(LibGst::Device*), classes)
      __return_value
    end

    def reconfigure_element(element)
      __return_value = LibGst.device_reconfigure_element(@pointer.as(LibGst::Device*), element.to_unsafe.as(LibGst::Element*))
      __return_value
    end

    alias RemovedSignal = Device ->
    def on_removed(&__block : RemovedSignal)
      __callback = ->(_arg0 : LibGst::Device*) {
       __return_value = __block.call(Device.new(_arg0))
       __return_value
      }
      connect("removed", __callback)
    end

  end
end

