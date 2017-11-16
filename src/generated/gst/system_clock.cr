require "./clock"

module Gst
  class SystemClock < Clock
    @pointer : Void*
    def initialize(pointer : LibGst::SystemClock*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::SystemClock*)
    end

    def clock_type
      __return_value = LibGst.system_clock_get_clock_type(to_unsafe.as(LibGst::SystemClock*))
      __return_value
    end

    def self.obtain
      __return_value = LibGst.system_clock_obtain
      Gst::Clock.new(__return_value)
    end

    def self.set_default(new_clock)
      LibGst.system_clock_set_default(new_clock.to_unsafe.as(LibGst::Clock*))
      nil
    end

  end
end

