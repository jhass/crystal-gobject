module Gst
  class TimedValue
    include GObject::WrappedType

    def self.new(timestamp : UInt64|Nil = nil, value : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGst::TimedValue*)).tap do |object|
        object.timestamp = timestamp unless timestamp.nil?
        object.value = value unless value.nil?
      end
    end

    @gst_timed_value : LibGst::TimedValue*?
    def initialize(@gst_timed_value : LibGst::TimedValue*)
    end

    def to_unsafe
      @gst_timed_value.not_nil!.as(Void*)
    end

    def timestamp
      (to_unsafe.value.timestamp)
    end

    def timestamp=(value : UInt64)
      to_unsafe.value.timestamp = UInt64.new(value)
    end

    def value
      (to_unsafe.value.value)
    end

    def value=(value : Float64)
      to_unsafe.value.value = Float64.new(value)
    end

  end
end

