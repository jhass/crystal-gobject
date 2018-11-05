module GLib
  class DateTime
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::DateTime*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::DateTime*)
    end

    def self.new(tz, year, month, day, hour, minute, seconds) : self
      __return_value = LibGLib.date_time_new(tz.to_unsafe.as(LibGLib::TimeZone*), Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_from_iso8601(text, default_tz) : self
      __return_value = LibGLib.date_time_new_from_iso8601(text.to_unsafe, default_tz ? default_tz.to_unsafe.as(LibGLib::TimeZone*) : nil)
      cast GLib::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_timeval_local(tv) : self
      __return_value = LibGLib.date_time_new_from_timeval_local(tv.to_unsafe.as(LibGLib::TimeVal*))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_from_timeval_utc(tv) : self
      __return_value = LibGLib.date_time_new_from_timeval_utc(tv.to_unsafe.as(LibGLib::TimeVal*))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_from_unix_local(t) : self
      __return_value = LibGLib.date_time_new_from_unix_local(Int64.new(t))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_from_unix_utc(t) : self
      __return_value = LibGLib.date_time_new_from_unix_utc(Int64.new(t))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_local(year, month, day, hour, minute, seconds) : self
      __return_value = LibGLib.date_time_new_local(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_now(tz) : self
      __return_value = LibGLib.date_time_new_now(tz.to_unsafe.as(LibGLib::TimeZone*))
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_now_local : self
      __return_value = LibGLib.date_time_new_now_local
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_now_utc : self
      __return_value = LibGLib.date_time_new_now_utc
      cast GLib::DateTime.new(__return_value)
    end

    def self.new_utc(year, month, day, hour, minute, seconds) : self
      __return_value = LibGLib.date_time_new_utc(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      cast GLib::DateTime.new(__return_value)
    end

    def add(timespan)
      __return_value = LibGLib.date_time_add(@pointer.as(LibGLib::DateTime*), Int64.new(timespan))
      GLib::DateTime.new(__return_value)
    end

    def add_days(days)
      __return_value = LibGLib.date_time_add_days(@pointer.as(LibGLib::DateTime*), Int32.new(days))
      GLib::DateTime.new(__return_value)
    end

    def add_full(years, months, days, hours, minutes, seconds)
      __return_value = LibGLib.date_time_add_full(@pointer.as(LibGLib::DateTime*), Int32.new(years), Int32.new(months), Int32.new(days), Int32.new(hours), Int32.new(minutes), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def add_hours(hours)
      __return_value = LibGLib.date_time_add_hours(@pointer.as(LibGLib::DateTime*), Int32.new(hours))
      GLib::DateTime.new(__return_value)
    end

    def add_minutes(minutes)
      __return_value = LibGLib.date_time_add_minutes(@pointer.as(LibGLib::DateTime*), Int32.new(minutes))
      GLib::DateTime.new(__return_value)
    end

    def add_months(months)
      __return_value = LibGLib.date_time_add_months(@pointer.as(LibGLib::DateTime*), Int32.new(months))
      GLib::DateTime.new(__return_value)
    end

    def add_seconds(seconds)
      __return_value = LibGLib.date_time_add_seconds(@pointer.as(LibGLib::DateTime*), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def add_weeks(weeks)
      __return_value = LibGLib.date_time_add_weeks(@pointer.as(LibGLib::DateTime*), Int32.new(weeks))
      GLib::DateTime.new(__return_value)
    end

    def add_years(years)
      __return_value = LibGLib.date_time_add_years(@pointer.as(LibGLib::DateTime*), Int32.new(years))
      GLib::DateTime.new(__return_value)
    end

    def difference(_begin)
      __return_value = LibGLib.date_time_difference(@pointer.as(LibGLib::DateTime*), _begin.to_unsafe.as(LibGLib::DateTime*))
      __return_value
    end

    def format(format)
      __return_value = LibGLib.date_time_format(@pointer.as(LibGLib::DateTime*), format.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def day_of_month
      __return_value = LibGLib.date_time_get_day_of_month(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def day_of_week
      __return_value = LibGLib.date_time_get_day_of_week(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def day_of_year
      __return_value = LibGLib.date_time_get_day_of_year(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def hour
      __return_value = LibGLib.date_time_get_hour(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def microsecond
      __return_value = LibGLib.date_time_get_microsecond(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def minute
      __return_value = LibGLib.date_time_get_minute(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def month
      __return_value = LibGLib.date_time_get_month(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def second
      __return_value = LibGLib.date_time_get_second(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def seconds
      __return_value = LibGLib.date_time_get_seconds(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def timezone
      __return_value = LibGLib.date_time_get_timezone(@pointer.as(LibGLib::DateTime*))
      GLib::TimeZone.new(__return_value)
    end

    def timezone_abbreviation
      __return_value = LibGLib.date_time_get_timezone_abbreviation(@pointer.as(LibGLib::DateTime*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def utc_offset
      __return_value = LibGLib.date_time_get_utc_offset(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def week_numbering_year
      __return_value = LibGLib.date_time_get_week_numbering_year(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def week_of_year
      __return_value = LibGLib.date_time_get_week_of_year(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def year
      __return_value = LibGLib.date_time_get_year(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def ymd(year, month, day)
      LibGLib.date_time_get_ymd(@pointer.as(LibGLib::DateTime*), year, month, day)
      nil
    end

    def daylight_savings?
      __return_value = LibGLib.date_time_is_daylight_savings(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def ref
      __return_value = LibGLib.date_time_ref(@pointer.as(LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def to_local
      __return_value = LibGLib.date_time_to_local(@pointer.as(LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def to_timeval(tv)
      __return_value = LibGLib.date_time_to_timeval(@pointer.as(LibGLib::DateTime*), tv.to_unsafe.as(LibGLib::TimeVal*))
      __return_value
    end

    def to_timezone(tz)
      __return_value = LibGLib.date_time_to_timezone(@pointer.as(LibGLib::DateTime*), tz.to_unsafe.as(LibGLib::TimeZone*))
      GLib::DateTime.new(__return_value)
    end

    def to_unix
      __return_value = LibGLib.date_time_to_unix(@pointer.as(LibGLib::DateTime*))
      __return_value
    end

    def to_utc
      __return_value = LibGLib.date_time_to_utc(@pointer.as(LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def unref
      LibGLib.date_time_unref(@pointer.as(LibGLib::DateTime*))
      nil
    end

    def self.compare(dt1, dt2)
      __return_value = LibGLib.date_time_compare(dt1, dt2)
      __return_value
    end

    def self.equal(dt1, dt2)
      __return_value = LibGLib.date_time_equal(dt1, dt2)
      __return_value
    end

    def self.hash(datetime)
      __return_value = LibGLib.date_time_hash(datetime)
      __return_value
    end

  end
end

