module Gst
  class ReferenceTimestampMeta
    include GObject::WrappedType

    def self.new(parent : Gst::Meta|Nil = nil, reference : Gst::Caps|Nil = nil, timestamp : UInt64|Nil = nil, duration : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGst::ReferenceTimestampMeta*)).tap do |object|
        object.parent = parent unless parent.nil?
        object.reference = reference unless reference.nil?
        object.timestamp = timestamp unless timestamp.nil?
        object.duration = duration unless duration.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::ReferenceTimestampMeta*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ReferenceTimestampMeta*)
    end

    def self.info
      __return_value = LibGst.reference_timestamp_meta_get_info
      Gst::MetaInfo.new(__return_value)
    end

    def parent
      Gst::Meta.new((to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.parent))
    end

    def parent=(value : Gst::Meta)
      to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.parent = value
    end

    def reference
      Gst::Caps.new((to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.reference))
    end

    def reference=(value : Gst::Caps)
      to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.reference = value.to_unsafe.as(LibGst::Caps*)
    end

    def timestamp
      (to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.timestamp)
    end

    def timestamp=(value : UInt64)
      to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.timestamp = UInt64.new(value)
    end

    def duration
      (to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.duration)
    end

    def duration=(value : UInt64)
      to_unsafe.as(LibGst::ReferenceTimestampMeta*).value.duration = UInt64.new(value)
    end

  end
end

