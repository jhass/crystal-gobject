require "./object"

module Gst
  class Clock < Object
    def initialize @gst_clock
    end

    def to_unsafe
      @gst_clock.not_nil!
    end




    def self.id_compare_func(id1, id2)
      __return_value = LibGst.clock_id_compare_func(id1, id2)
      __return_value
    end

    def self.id_get_time(id)
      __return_value = LibGst.clock_id_get_time(id)
      __return_value
    end

    def self.id_ref(id)
      __return_value = LibGst.clock_id_ref(id)
      __return_value
    end

    def self.id_unref(id)
      __return_value = LibGst.clock_id_unref(id)
      __return_value
    end

    def self.id_unschedule(id)
      __return_value = LibGst.clock_id_unschedule(id)
      __return_value
    end

    def self.id_wait(id, jitter)
      __return_value = LibGst.clock_id_wait(id, Int64.new(jitter))
      __return_value
    end

    def self.id_wait_async(id, func : LibGst::ClockCallback, user_data, destroy_data : LibGLib::DestroyNotify)
      __return_value = LibGst.clock_id_wait_async(id, func, user_data, destroy_data)
      __return_value
    end

    def add_observation(slave, master, r_squared)
      __return_value = LibGst.clock_add_observation((to_unsafe as LibGst::Clock*), UInt64.new(slave), UInt64.new(master), Float64.new(r_squared))
      __return_value
    end

    def adjust_unlocked(internal)
      __return_value = LibGst.clock_adjust_unlocked((to_unsafe as LibGst::Clock*), UInt64.new(internal))
      __return_value
    end

    def calibration(internal, external, rate_num, rate_denom)
      __return_value = LibGst.clock_get_calibration((to_unsafe as LibGst::Clock*), UInt64.new(internal), UInt64.new(external), UInt64.new(rate_num), UInt64.new(rate_denom))
      __return_value
    end

    def internal_time
      __return_value = LibGst.clock_get_internal_time((to_unsafe as LibGst::Clock*))
      __return_value
    end

    def master
      __return_value = LibGst.clock_get_master((to_unsafe as LibGst::Clock*))
      Gst::Clock.new(__return_value) if __return_value
    end

    def resolution
      __return_value = LibGst.clock_get_resolution((to_unsafe as LibGst::Clock*))
      __return_value
    end

    def time
      __return_value = LibGst.clock_get_time((to_unsafe as LibGst::Clock*))
      __return_value
    end

    def timeout
      __return_value = LibGst.clock_get_timeout((to_unsafe as LibGst::Clock*))
      __return_value
    end

    def new_periodic_id(start_time, interval)
      __return_value = LibGst.clock_new_periodic_id((to_unsafe as LibGst::Clock*), UInt64.new(start_time), UInt64.new(interval))
      __return_value
    end

    def new_single_shot_id(time)
      __return_value = LibGst.clock_new_single_shot_id((to_unsafe as LibGst::Clock*), UInt64.new(time))
      __return_value
    end

    def periodic_id_reinit(id, start_time, interval)
      __return_value = LibGst.clock_periodic_id_reinit((to_unsafe as LibGst::Clock*), id, UInt64.new(start_time), UInt64.new(interval))
      __return_value
    end

    def set_calibration(internal, external, rate_num, rate_denom)
      __return_value = LibGst.clock_set_calibration((to_unsafe as LibGst::Clock*), UInt64.new(internal), UInt64.new(external), UInt64.new(rate_num), UInt64.new(rate_denom))
      __return_value
    end

    def master=(master)
      __return_value = LibGst.clock_set_master((to_unsafe as LibGst::Clock*), master && (master.to_unsafe as LibGst::Clock*))
      __return_value
    end

    def resolution=(resolution)
      __return_value = LibGst.clock_set_resolution((to_unsafe as LibGst::Clock*), UInt64.new(resolution))
      __return_value
    end

    def timeout=(timeout)
      __return_value = LibGst.clock_set_timeout((to_unsafe as LibGst::Clock*), UInt64.new(timeout))
      __return_value
    end

    def single_shot_id_reinit(id, time)
      __return_value = LibGst.clock_single_shot_id_reinit((to_unsafe as LibGst::Clock*), id, UInt64.new(time))
      __return_value
    end

    def unadjust_unlocked(external)
      __return_value = LibGst.clock_unadjust_unlocked((to_unsafe as LibGst::Clock*), UInt64.new(external))
      __return_value
    end

  end
end

