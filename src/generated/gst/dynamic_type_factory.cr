require "./plugin_feature"

module Gst
  class DynamicTypeFactory < PluginFeature
    @pointer : Void*
    def initialize(pointer : LibGst::DynamicTypeFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DynamicTypeFactory*)
    end

    def self.load(factoryname)
      __return_value = LibGst.dynamic_type_factory_load(factoryname.to_unsafe)
      __return_value
    end

  end
end

