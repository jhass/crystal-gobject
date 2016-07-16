module GLib
  class Timer
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::Timer*))
    end

    @g_lib_timer : LibGLib::Timer*?
    def initialize(@g_lib_timer : LibGLib::Timer*)
    end

    def to_unsafe
      @g_lib_timer.not_nil!
    end

    def continue
      __return_value = LibGLib.timer_continue(to_unsafe.as(LibGLib::Timer*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.timer_destroy(to_unsafe.as(LibGLib::Timer*))
      __return_value
    end

    def elapsed(microseconds)
      __return_value = LibGLib.timer_elapsed(to_unsafe.as(LibGLib::Timer*), microseconds)
      __return_value
    end

    def reset
      __return_value = LibGLib.timer_reset(to_unsafe.as(LibGLib::Timer*))
      __return_value
    end

    def start
      __return_value = LibGLib.timer_start(to_unsafe.as(LibGLib::Timer*))
      __return_value
    end

    def stop
      __return_value = LibGLib.timer_stop(to_unsafe.as(LibGLib::Timer*))
      __return_value
    end

  end
end

