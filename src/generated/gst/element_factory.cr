require "./plugin_feature"

module Gst
  class ElementFactory < PluginFeature
    @pointer : Void*
    def initialize(pointer : LibGst::ElementFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ElementFactory*)
    end

    def self.find(name)
      __return_value = LibGst.element_factory_find(name.to_unsafe)
      Gst::ElementFactory.new(__return_value) if __return_value
    end

    def self.list_filter(list, caps, direction : Gst::PadDirection, subsetonly)
      __return_value = LibGst.element_factory_list_filter(list, caps.to_unsafe.as(LibGst::Caps*), direction, subsetonly)
      GLib::ListIterator(Gst::ElementFactory, LibGst::ElementFactory**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.list_get_elements(type, minrank : Gst::Rank)
      __return_value = LibGst.element_factory_list_get_elements(UInt64.new(type), minrank)
      GLib::ListIterator(Gst::ElementFactory, LibGst::ElementFactory**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.make(factoryname, name)
      __return_value = LibGst.element_factory_make(factoryname.to_unsafe, name ? name.to_unsafe : nil)
      Gst::Element.new(__return_value) if __return_value
    end

    def can_sink_all_caps(caps)
      __return_value = LibGst.element_factory_can_sink_all_caps(@pointer.as(LibGst::ElementFactory*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def can_sink_any_caps(caps)
      __return_value = LibGst.element_factory_can_sink_any_caps(@pointer.as(LibGst::ElementFactory*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def can_src_all_caps(caps)
      __return_value = LibGst.element_factory_can_src_all_caps(@pointer.as(LibGst::ElementFactory*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def can_src_any_caps(caps)
      __return_value = LibGst.element_factory_can_src_any_caps(@pointer.as(LibGst::ElementFactory*), caps.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def create(name)
      __return_value = LibGst.element_factory_create(@pointer.as(LibGst::ElementFactory*), name ? name.to_unsafe : nil)
      Gst::Element.new(__return_value) if __return_value
    end

    def element_type
      __return_value = LibGst.element_factory_get_element_type(@pointer.as(LibGst::ElementFactory*))
      __return_value
    end

    def metadata(key)
      __return_value = LibGst.element_factory_get_metadata(@pointer.as(LibGst::ElementFactory*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def metadata_keys
      __return_value = LibGst.element_factory_get_metadata_keys(@pointer.as(LibGst::ElementFactory*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def num_pad_templates
      __return_value = LibGst.element_factory_get_num_pad_templates(@pointer.as(LibGst::ElementFactory*))
      __return_value
    end

    def static_pad_templates
      __return_value = LibGst.element_factory_get_static_pad_templates(@pointer.as(LibGst::ElementFactory*))
      GLib::ListIterator(Gst::StaticPadTemplate, LibGst::StaticPadTemplate*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def uri_protocols
      __return_value = LibGst.element_factory_get_uri_protocols(@pointer.as(LibGst::ElementFactory*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def uri_type
      __return_value = LibGst.element_factory_get_uri_type(@pointer.as(LibGst::ElementFactory*))
      __return_value
    end

    def has_interface(interfacename)
      __return_value = LibGst.element_factory_has_interface(@pointer.as(LibGst::ElementFactory*), interfacename.to_unsafe)
      __return_value
    end

    def list_is_type(type)
      __return_value = LibGst.element_factory_list_is_type(@pointer.as(LibGst::ElementFactory*), UInt64.new(type))
      __return_value
    end

  end
end

