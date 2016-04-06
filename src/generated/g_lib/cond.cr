module GLib
  class Cond
    include GObject::WrappedType

    def initialize(@g_lib_cond)
    end

    def to_unsafe
      @g_lib_cond.not_nil!
    end

    def broadcast
      __return_value = LibGLib.cond_broadcast((to_unsafe as LibGLib::Cond*))
      __return_value
    end

    def clear
      __return_value = LibGLib.cond_clear((to_unsafe as LibGLib::Cond*))
      __return_value
    end

    def init
      __return_value = LibGLib.cond_init((to_unsafe as LibGLib::Cond*))
      __return_value
    end

    def signal
      __return_value = LibGLib.cond_signal((to_unsafe as LibGLib::Cond*))
      __return_value
    end

    def wait(mutex)
      __return_value = LibGLib.cond_wait((to_unsafe as LibGLib::Cond*), (mutex.to_unsafe as LibGLib::Mutex*))
      __return_value
    end

    def wait_until(mutex, end_time)
      __return_value = LibGLib.cond_wait_until((to_unsafe as LibGLib::Cond*), (mutex.to_unsafe as LibGLib::Mutex*), Int64.new(end_time))
      __return_value
    end

  end
end

