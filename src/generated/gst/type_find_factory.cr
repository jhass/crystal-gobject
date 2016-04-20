require "./plugin_feature"

module Gst
  class TypeFindFactory < PluginFeature
    def initialize(@gst_type_find_factory)
    end

    def to_unsafe
      @gst_type_find_factory.not_nil!
    end

    def self.list
      __return_value = LibGst.type_find_factory_get_list
      __return_value
    end

    def call_function(find)
      __return_value = LibGst.type_find_factory_call_function((to_unsafe as LibGst::TypeFindFactory*), (find.to_unsafe as LibGst::TypeFind*))
      __return_value
    end

    def caps
      __return_value = LibGst.type_find_factory_get_caps((to_unsafe as LibGst::TypeFindFactory*))
      Gst::Caps.new(__return_value)
    end

    def extensions
      __return_value = LibGst.type_find_factory_get_extensions((to_unsafe as LibGst::TypeFindFactory*))
      PointerIterator.new(__return_value) {|__item_39| (raise "Expected string but got null" unless __item_39; ::String.new(__item_39)) } if __return_value
    end

    def has_function
      __return_value = LibGst.type_find_factory_has_function((to_unsafe as LibGst::TypeFindFactory*))
      __return_value
    end

  end
end

