module Gst
  class MetaInfo
    include GObject::WrappedType

    def self.new(api : UInt64|Nil = nil, type : UInt64|Nil = nil, size : UInt64|Nil = nil, init_func : Gst::MetaInitFunction|Nil = nil, free_func : Gst::MetaFreeFunction|Nil = nil, transform_func : Gst::MetaTransformFunction|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGst::MetaInfo*)).tap do |object|
        object.api = api unless api.nil?
        object.type = type unless type.nil?
        object.size = size unless size.nil?
        object.init_func = init_func unless init_func.nil?
        object.free_func = free_func unless free_func.nil?
        object.transform_func = transform_func unless transform_func.nil?
      end
    end

    @gst_meta_info : LibGst::MetaInfo*?
    def initialize(@gst_meta_info : LibGst::MetaInfo*)
    end

    def to_unsafe
      @gst_meta_info.not_nil!
    end

    def api
      (to_unsafe.as(LibGst::MetaInfo*).value.api)
    end

    def api=(value : UInt64)
      to_unsafe.as(LibGst::MetaInfo*).value.api = UInt64.new(value)
    end

    def type
      (to_unsafe.as(LibGst::MetaInfo*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGst::MetaInfo*).value.type = UInt64.new(value)
    end

    def size
      (to_unsafe.as(LibGst::MetaInfo*).value.size)
    end

    def size=(value : UInt64)
      to_unsafe.as(LibGst::MetaInfo*).value.size = UInt64.new(value)
    end

    def init_func
      (to_unsafe.as(LibGst::MetaInfo*).value.init_func)
    end

    def init_func=(value : Gst::MetaInitFunction)
      to_unsafe.as(LibGst::MetaInfo*).value.init_func = value
    end

    def free_func
      (to_unsafe.as(LibGst::MetaInfo*).value.free_func)
    end

    def free_func=(value : Gst::MetaFreeFunction)
      to_unsafe.as(LibGst::MetaInfo*).value.free_func = value
    end

    def transform_func
      (to_unsafe.as(LibGst::MetaInfo*).value.transform_func)
    end

    def transform_func=(value : Gst::MetaTransformFunction)
      to_unsafe.as(LibGst::MetaInfo*).value.transform_func = value
    end

  end
end

