require "./plugin_feature"

module Gst
  class ElementFactory < PluginFeature
    def initialize @gst_element_factory
    end

    def to_unsafe
      @gst_element_factory.not_nil!
    end

    def self.find(name)
      __return_value = LibGst.element_factory_find(name)
      Gst::ElementFactory.new(__return_value) if __return_value
    end

    def self.list_filter(list, caps, direction, subsetonly)
      __return_value = LibGst.element_factory_list_filter(list, (caps.to_unsafe as LibGst::Caps*), direction, Bool.new(subsetonly))
      __return_value
    end

    def self.list_get_elements(type, minrank)
      __return_value = LibGst.element_factory_list_get_elements(UInt64.new(type), minrank)
      __return_value
    end

    def self.make(factoryname, name)
      __return_value = LibGst.element_factory_make(factoryname, name && name)
      Gst::Element.new(__return_value) if __return_value
    end

    def can_sink_all_caps(caps)
      __return_value = LibGst.element_factory_can_sink_all_caps((to_unsafe as LibGst::ElementFactory*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def can_sink_any_caps(caps)
      __return_value = LibGst.element_factory_can_sink_any_caps((to_unsafe as LibGst::ElementFactory*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def can_src_all_caps(caps)
      __return_value = LibGst.element_factory_can_src_all_caps((to_unsafe as LibGst::ElementFactory*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def can_src_any_caps(caps)
      __return_value = LibGst.element_factory_can_src_any_caps((to_unsafe as LibGst::ElementFactory*), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def create(name)
      __return_value = LibGst.element_factory_create((to_unsafe as LibGst::ElementFactory*), name && name)
      Gst::Element.new(__return_value) if __return_value
    end

    def element_type
      __return_value = LibGst.element_factory_get_element_type((to_unsafe as LibGst::ElementFactory*))
      __return_value
    end

    def metadata(key)
      __return_value = LibGst.element_factory_get_metadata((to_unsafe as LibGst::ElementFactory*), key)
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def metadata_keys
      __return_value = LibGst.element_factory_get_metadata_keys((to_unsafe as LibGst::ElementFactory*))
      PointerIterator.new(__return_value) {|__item_87| raise "Expected string but got null" unless __item_87; String.new(__item_87) } if __return_value
    end

    def num_pad_templates
      __return_value = LibGst.element_factory_get_num_pad_templates((to_unsafe as LibGst::ElementFactory*))
      __return_value
    end

    def static_pad_templates
      __return_value = LibGst.element_factory_get_static_pad_templates((to_unsafe as LibGst::ElementFactory*))
      __return_value
    end

    def uri_protocols
      __return_value = LibGst.element_factory_get_uri_protocols((to_unsafe as LibGst::ElementFactory*))
      PointerIterator.new(__return_value) {|__item_52| raise "Expected string but got null" unless __item_52; String.new(__item_52) }
    end

    def uri_type
      __return_value = LibGst.element_factory_get_uri_type((to_unsafe as LibGst::ElementFactory*))
      __return_value
    end

    def has_interface(interfacename)
      __return_value = LibGst.element_factory_has_interface((to_unsafe as LibGst::ElementFactory*), interfacename)
      __return_value
    end

    def list_is_type(type)
      __return_value = LibGst.element_factory_list_is_type((to_unsafe as LibGst::ElementFactory*), UInt64.new(type))
      __return_value
    end

  end
end

