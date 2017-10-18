module GLib
  class Timer
    include GObject::WrappedType

    @g_lib_timer : LibGLib::Timer*?
    def initialize(@g_lib_timer : LibGLib::Timer*)
    end

    def to_unsafe
      @g_lib_timer.not_nil!
    end

    def continue
      LibGLib.timer_continue(to_unsafe.as(LibGLib::Timer*))
      nil
    end

    def destroy
      LibGLib.timer_destroy(to_unsafe.as(LibGLib::Timer*))
      nil
    end

    def elapsed(microseconds)
      __return_value = LibGLib.timer_elapsed(to_unsafe.as(LibGLib::Timer*), microseconds)
      __return_value
    end

    def reset
      LibGLib.timer_reset(to_unsafe.as(LibGLib::Timer*))
      nil
    end

    def start
      LibGLib.timer_start(to_unsafe.as(LibGLib::Timer*))
      nil
    end

    def stop
      LibGLib.timer_stop(to_unsafe.as(LibGLib::Timer*))
      nil
    end

  end
end

