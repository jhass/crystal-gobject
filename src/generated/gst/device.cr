require "./object"

module Gst
  class Device < Object
    def initialize(@gst_device)
    end

    def to_unsafe
      @gst_device.not_nil!
    end





    def create_element(name)
      __return_value = LibGst.device_create_element((to_unsafe as LibGst::Device*), name && name)
      Gst::Element.new(__return_value)
    end

    def caps
      __return_value = LibGst.device_get_caps((to_unsafe as LibGst::Device*))
      Gst::Caps.new(__return_value)
    end

    def device_class
      __return_value = LibGst.device_get_device_class((to_unsafe as LibGst::Device*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def display_name
      __return_value = LibGst.device_get_display_name((to_unsafe as LibGst::Device*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def properties
      __return_value = LibGst.device_get_properties((to_unsafe as LibGst::Device*))
      Gst::Structure.new(__return_value)
    end

    def has_classes(classes)
      __return_value = LibGst.device_has_classes((to_unsafe as LibGst::Device*), classes)
      __return_value
    end

    def has_classesv(classes)
      __return_value = LibGst.device_has_classesv((to_unsafe as LibGst::Device*), classes)
      __return_value
    end

    def reconfigure_element(element)
      __return_value = LibGst.device_reconfigure_element((to_unsafe as LibGst::Device*), (element.to_unsafe as LibGst::Element*))
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

