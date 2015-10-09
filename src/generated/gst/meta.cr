module Gst
  class Meta
    include GObject::WrappedType

    def initialize @gst_meta
    end

    def to_unsafe
      @gst_meta.not_nil!
    end

    def self.api_type_get_tags(api)
      __return_value = LibGst.meta_api_type_get_tags(UInt64.new(api))
      PointerIterator.new(__return_value) {|__item_43| (raise "Expected string but got null" unless __item_43; String.new(__item_43)) }
    end

    def self.api_type_has_tag(api, tag)
      __return_value = LibGst.meta_api_type_has_tag(UInt64.new(api), UInt32.new(tag))
      __return_value
    end

    def self.api_type_register(api, tags)
      __return_value = LibGst.meta_api_type_register(api, tags)
      __return_value
    end

    def self.info(impl)
      __return_value = LibGst.meta_get_info(impl)
      Gst::MetaInfo.new(__return_value) if __return_value
    end

    def self.register(api, impl, size, init_func : LibGst::MetaInitFunction, free_func : LibGst::MetaFreeFunction, transform_func : LibGst::MetaTransformFunction)
      __return_value = LibGst.meta_register(UInt64.new(api), impl, UInt64.new(size), init_func, free_func, transform_func)
      Gst::MetaInfo.new(__return_value)
    end

  end
end

