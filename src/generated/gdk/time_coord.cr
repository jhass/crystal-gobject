module Gdk
  class TimeCoord
    include GObject::WrappedType

    def self.new(time : UInt32|Nil = nil, axes : Array(Float64)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(1032, 0u8)
      new(ptr.as(LibGdk::TimeCoord*)).tap do |object|
        object.time = time unless time.nil?
        object.axes = axes unless axes.nil?
      end
    end

    @gdk_time_coord : LibGdk::TimeCoord*?
    def initialize(@gdk_time_coord : LibGdk::TimeCoord*)
    end

    def to_unsafe
      @gdk_time_coord.not_nil!
    end

    def time
      (to_unsafe.value.time)
    end

    def time=(value : UInt32)
      to_unsafe.value.time = UInt32.new(value)
    end

    def axes
      PointerIterator.new((to_unsafe.value.axes)) {|__item| __item }
    end

    def axes=(value : Array(Float64))
      to_unsafe.value.axes = value
    end

  end
end

