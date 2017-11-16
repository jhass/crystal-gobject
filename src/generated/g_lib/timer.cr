module GLib
  class Timer
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Timer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Timer*)
    end

    def continue
      LibGLib.timer_continue(@pointer.as(LibGLib::Timer*))
      nil
    end

    def destroy
      LibGLib.timer_destroy(@pointer.as(LibGLib::Timer*))
      nil
    end

    def elapsed(microseconds)
      __return_value = LibGLib.timer_elapsed(@pointer.as(LibGLib::Timer*), microseconds)
      __return_value
    end

    def reset
      LibGLib.timer_reset(@pointer.as(LibGLib::Timer*))
      nil
    end

    def start
      LibGLib.timer_start(@pointer.as(LibGLib::Timer*))
      nil
    end

    def stop
      LibGLib.timer_stop(@pointer.as(LibGLib::Timer*))
      nil
    end

  end
end

