module GLib
  class Timer
    include GObject::WrappedType

    def initialize(@g_lib_timer)
    end

    def to_unsafe
      @g_lib_timer.not_nil!
    end

    def continue
      __return_value = LibGLib.timer_continue((to_unsafe as LibGLib::Timer*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.timer_destroy((to_unsafe as LibGLib::Timer*))
      __return_value
    end

    def elapsed(microseconds)
      __return_value = LibGLib.timer_elapsed((to_unsafe as LibGLib::Timer*), microseconds)
      __return_value
    end

    def reset
      __return_value = LibGLib.timer_reset((to_unsafe as LibGLib::Timer*))
      __return_value
    end

    def start
      __return_value = LibGLib.timer_start((to_unsafe as LibGLib::Timer*))
      __return_value
    end

    def stop
      __return_value = LibGLib.timer_stop((to_unsafe as LibGLib::Timer*))
      __return_value
    end

  end
end

