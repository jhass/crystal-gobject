module Gst
  class ParentBufferMeta
    include GObject::WrappedType

    def self.new(parent : Gst::Meta|Nil = nil, buffer : Gst::Buffer|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGst::ParentBufferMeta*)).tap do |object|
        object.parent = parent unless parent.nil?
        object.buffer = buffer unless buffer.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::ParentBufferMeta*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ParentBufferMeta*)
    end

    def self.info
      __return_value = LibGst.parent_buffer_meta_get_info
      Gst::MetaInfo.new(__return_value)
    end

    def parent
      Gst::Meta.new((to_unsafe.as(LibGst::ParentBufferMeta*).value.parent))
    end

    def parent=(value : Gst::Meta)
      to_unsafe.as(LibGst::ParentBufferMeta*).value.parent = value
    end

    def buffer
      Gst::Buffer.new((to_unsafe.as(LibGst::ParentBufferMeta*).value.buffer))
    end

    def buffer=(value : Gst::Buffer)
      to_unsafe.as(LibGst::ParentBufferMeta*).value.buffer = value.to_unsafe.as(LibGst::Buffer*)
    end

  end
end

