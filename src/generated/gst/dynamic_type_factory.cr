require "./plugin_feature"

module Gst
  class DynamicTypeFactory < PluginFeature
    @gst_dynamic_type_factory : LibGst::DynamicTypeFactory*?
    def initialize(@gst_dynamic_type_factory : LibGst::DynamicTypeFactory*)
    end

    def to_unsafe
      @gst_dynamic_type_factory.not_nil!
    end

    def self.load(factoryname)
      __return_value = LibGst.dynamic_type_factory_load(factoryname.to_unsafe)
      __return_value
    end

  end
end

