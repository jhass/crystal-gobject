module Gst
  class MetaTransformCopy
    include GObject::WrappedType

    def self.new(region : Bool|Nil = nil, offset : UInt64|Nil = nil, size : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGst::MetaTransformCopy*)).tap do |object|
        object.region = region unless region.nil?
        object.offset = offset unless offset.nil?
        object.size = size unless size.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::MetaTransformCopy*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::MetaTransformCopy*)
    end

    def region
      (to_unsafe.as(LibGst::MetaTransformCopy*).value.region)
    end

    def region=(value : Bool)
      to_unsafe.as(LibGst::MetaTransformCopy*).value.region = value
    end

    def offset
      (to_unsafe.as(LibGst::MetaTransformCopy*).value.offset)
    end

    def offset=(value : UInt64)
      to_unsafe.as(LibGst::MetaTransformCopy*).value.offset = UInt64.new(value)
    end

    def size
      (to_unsafe.as(LibGst::MetaTransformCopy*).value.size)
    end

    def size=(value : UInt64)
      to_unsafe.as(LibGst::MetaTransformCopy*).value.size = UInt64.new(value)
    end

  end
end

