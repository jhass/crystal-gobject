module Gst
  class ProtectionMeta
    include GObject::WrappedType

    def self.new(meta : Gst::Meta|Nil = nil, info : Gst::Structure|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGst::ProtectionMeta*)).tap do |object|
        object.meta = meta unless meta.nil?
        object.info = info unless info.nil?
      end
    end

    @gst_protection_meta : LibGst::ProtectionMeta*?
    def initialize(@gst_protection_meta : LibGst::ProtectionMeta*)
    end

    def to_unsafe
      @gst_protection_meta.not_nil!.as(Void*)
    end

    def self.info
      __return_value = LibGst.protection_meta_get_info
      Gst::MetaInfo.new(__return_value)
    end

    def meta
      Gst::Meta.new((to_unsafe.value.meta))
    end

    def meta=(value : Gst::Meta)
      to_unsafe.value.meta = value
    end

    def info
      Gst::Structure.new((to_unsafe.value.info))
    end

    def info=(value : Gst::Structure)
      to_unsafe.value.info = value.to_unsafe.as(LibGst::Structure*)
    end

  end
end

