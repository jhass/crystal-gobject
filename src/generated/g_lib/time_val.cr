module GLib
  class TimeVal
    include GObject::WrappedType

    def initialize(@g_lib_time_val)
    end

    def to_unsafe
      @g_lib_time_val.not_nil!
    end

    def add(microseconds)
      __return_value = LibGLib.time_val_add((to_unsafe as LibGLib::TimeVal*), Int64.new(microseconds))
      __return_value
    end

    def to_iso8601
      __return_value = LibGLib.time_val_to_iso8601((to_unsafe as LibGLib::TimeVal*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.from_iso8601(iso_date, time)
      __return_value = LibGLib.time_val_from_iso8601(iso_date, time)
      __return_value
    end

  end
end

