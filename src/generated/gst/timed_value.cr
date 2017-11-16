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

    @pointer : Void*
    def initialize(pointer : LibGst::TimedValue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TimedValue*)
    end

    def timestamp
      (to_unsafe.as(LibGst::TimedValue*).value.timestamp)
    end

    def timestamp=(value : UInt64)
      to_unsafe.as(LibGst::TimedValue*).value.timestamp = UInt64.new(value)
    end

    def value
      (to_unsafe.as(LibGst::TimedValue*).value.value)
    end

    def value=(value : Float64)
      to_unsafe.as(LibGst::TimedValue*).value.value = Float64.new(value)
    end

  end
end

