require "./clock"

module Gst
  class SystemClock < Clock
    def initialize(@gst_system_clock)
    end

    def to_unsafe
      @gst_system_clock.not_nil!
    end


    def self.obtain
      __return_value = LibGst.system_clock_obtain
      Gst::Clock.new(__return_value)
    end

    def self.set_default(new_clock)
      __return_value = LibGst.system_clock_set_default((new_clock.to_unsafe as LibGst::Clock*))
      __return_value
    end

  end
end

