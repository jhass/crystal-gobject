module GLib
  class TimeZone
    include GObject::WrappedType

    def initialize(@g_lib_time_zone)
    end

    def to_unsafe
      @g_lib_time_zone.not_nil!
    end

    def self.new_internal(identifier)
      __return_value = LibGLib.time_zone_new(identifier && identifier)
      GLib::TimeZone.new(__return_value)
    end

    def self.new_local
      __return_value = LibGLib.time_zone_new_local
      GLib::TimeZone.new(__return_value)
    end

    def self.new_utc
      __return_value = LibGLib.time_zone_new_utc
      GLib::TimeZone.new(__return_value)
    end

    def adjust_time(type, time)
      __return_value = LibGLib.time_zone_adjust_time((to_unsafe as LibGLib::TimeZone*), type, time)
      __return_value
    end

    def find_interval(type, time)
      __return_value = LibGLib.time_zone_find_interval((to_unsafe as LibGLib::TimeZone*), type, Int64.new(time))
      __return_value
    end

    def abbreviation(interval)
      __return_value = LibGLib.time_zone_get_abbreviation((to_unsafe as LibGLib::TimeZone*), Int32.new(interval))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def offset(interval)
      __return_value = LibGLib.time_zone_get_offset((to_unsafe as LibGLib::TimeZone*), Int32.new(interval))
      __return_value
    end

    def dst?(interval)
      __return_value = LibGLib.time_zone_is_dst((to_unsafe as LibGLib::TimeZone*), Int32.new(interval))
      __return_value
    end

    def ref
      __return_value = LibGLib.time_zone_ref((to_unsafe as LibGLib::TimeZone*))
      GLib::TimeZone.new(__return_value)
    end

    def unref
      __return_value = LibGLib.time_zone_unref((to_unsafe as LibGLib::TimeZone*))
      __return_value
    end

  end
end

