module GLib
  class TimeZone
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::TimeZone*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::TimeZone*)
    end

    def self.new(identifier) : self
      __return_value = LibGLib.time_zone_new(identifier ? identifier.to_unsafe : nil)
      cast GLib::TimeZone.new(__return_value)
    end

    def self.new_local : self
      __return_value = LibGLib.time_zone_new_local
      cast GLib::TimeZone.new(__return_value)
    end

    def self.new_offset(seconds) : self
      __return_value = LibGLib.time_zone_new_offset(Int32.new(seconds))
      cast GLib::TimeZone.new(__return_value)
    end

    def self.new_utc : self
      __return_value = LibGLib.time_zone_new_utc
      cast GLib::TimeZone.new(__return_value)
    end

    def adjust_time(type : GLib::TimeType, time)
      __return_value = LibGLib.time_zone_adjust_time(@pointer.as(LibGLib::TimeZone*), type, time)
      __return_value
    end

    def find_interval(type : GLib::TimeType, time)
      __return_value = LibGLib.time_zone_find_interval(@pointer.as(LibGLib::TimeZone*), type, Int64.new(time))
      __return_value
    end

    def abbreviation(interval)
      __return_value = LibGLib.time_zone_get_abbreviation(@pointer.as(LibGLib::TimeZone*), Int32.new(interval))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def identifier
      __return_value = LibGLib.time_zone_get_identifier(@pointer.as(LibGLib::TimeZone*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def offset(interval)
      __return_value = LibGLib.time_zone_get_offset(@pointer.as(LibGLib::TimeZone*), Int32.new(interval))
      __return_value
    end

    def dst?(interval)
      __return_value = LibGLib.time_zone_is_dst(@pointer.as(LibGLib::TimeZone*), Int32.new(interval))
      __return_value
    end

    def ref
      __return_value = LibGLib.time_zone_ref(@pointer.as(LibGLib::TimeZone*))
      GLib::TimeZone.new(__return_value)
    end

    def unref
      LibGLib.time_zone_unref(@pointer.as(LibGLib::TimeZone*))
      nil
    end

  end
end

