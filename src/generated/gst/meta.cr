module Gst
  class Meta
    include GObject::WrappedType

    def self.new(flags : Gst::MetaFlags|Nil = nil, info : Gst::MetaInfo|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGst::Meta*)).tap do |object|
        object.flags = flags unless flags.nil?
        object.info = info unless info.nil?
      end
    end

    @gst_meta : LibGst::Meta*?
    def initialize(@gst_meta : LibGst::Meta*)
    end

    def to_unsafe
      @gst_meta.not_nil!
    end

    def self.api_type_get_tags(api)
      __return_value = LibGst.meta_api_type_get_tags(UInt64.new(api))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
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

    def self.register(api, impl, size, init_func, free_func, transform_func)
      __return_value = LibGst.meta_register(UInt64.new(api), impl, UInt64.new(size), init_func, free_func, transform_func)
      Gst::MetaInfo.new(__return_value)
    end

    def flags
      (to_unsafe.as(LibGst::Meta*).value.flags)
    end

    def flags=(value : Gst::MetaFlags)
      to_unsafe.as(LibGst::Meta*).value.flags = value
    end

    def info
      Gst::MetaInfo.new((to_unsafe.as(LibGst::Meta*).value.info))
    end

    def info=(value : Gst::MetaInfo)
      to_unsafe.as(LibGst::Meta*).value.info = value.to_unsafe.as(LibGst::MetaInfo*)
    end

  end
end

