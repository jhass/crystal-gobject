require "./plugin_feature"

module Gst
  class DeviceProviderFactory < PluginFeature
    def initialize @gst_device_provider_factory
    end

    def to_unsafe
      @gst_device_provider_factory.not_nil!
    end

    def self.find(name)
      __return_value = LibGst.device_provider_factory_find(name)
      Gst::DeviceProviderFactory.new(__return_value) if __return_value
    end

    def self.by_name(factoryname)
      __return_value = LibGst.device_provider_factory_get_by_name(factoryname)
      Gst::DeviceProvider.new(__return_value) if __return_value
    end

    def self.list_get_device_providers(minrank)
      __return_value = LibGst.device_provider_factory_list_get_device_providers(minrank)
      __return_value
    end

    def get
      __return_value = LibGst.device_provider_factory_get((to_unsafe as LibGst::DeviceProviderFactory*))
      Gst::DeviceProvider.new(__return_value) if __return_value
    end

    def device_provider_type
      __return_value = LibGst.device_provider_factory_get_device_provider_type((to_unsafe as LibGst::DeviceProviderFactory*))
      __return_value
    end

    def metadata(key)
      __return_value = LibGst.device_provider_factory_get_metadata((to_unsafe as LibGst::DeviceProviderFactory*), key)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def metadata_keys
      __return_value = LibGst.device_provider_factory_get_metadata_keys((to_unsafe as LibGst::DeviceProviderFactory*))
      PointerIterator.new(__return_value) {|__item_0| (raise "Expected string but got null" unless __item_0; String.new(__item_0)) } if __return_value
    end

    def has_classes(classes)
      __return_value = LibGst.device_provider_factory_has_classes((to_unsafe as LibGst::DeviceProviderFactory*), classes && classes)
      __return_value
    end

    def has_classesv(classes)
      __return_value = LibGst.device_provider_factory_has_classesv((to_unsafe as LibGst::DeviceProviderFactory*), classes && classes)
      __return_value
    end

  end
end

