module GLib
  class DateTime
    include GObject::WrappedType

    def initialize(@g_lib_date_time)
    end

    def to_unsafe
      @g_lib_date_time.not_nil!
    end

    def self.new_internal(tz, year, month, day, hour, minute, seconds)
      __return_value = LibGLib.date_time_new((tz.to_unsafe as LibGLib::TimeZone*), Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def self.new_from_timeval_local(tv)
      __return_value = LibGLib.date_time_new_from_timeval_local((tv.to_unsafe as LibGLib::TimeVal*))
      GLib::DateTime.new(__return_value)
    end

    def self.new_from_timeval_utc(tv)
      __return_value = LibGLib.date_time_new_from_timeval_utc((tv.to_unsafe as LibGLib::TimeVal*))
      GLib::DateTime.new(__return_value)
    end

    def self.new_from_unix_local(t)
      __return_value = LibGLib.date_time_new_from_unix_local(Int64.new(t))
      GLib::DateTime.new(__return_value)
    end

    def self.new_from_unix_utc(t)
      __return_value = LibGLib.date_time_new_from_unix_utc(Int64.new(t))
      GLib::DateTime.new(__return_value)
    end

    def self.new_local(year, month, day, hour, minute, seconds)
      __return_value = LibGLib.date_time_new_local(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def self.new_now(tz)
      __return_value = LibGLib.date_time_new_now((tz.to_unsafe as LibGLib::TimeZone*))
      GLib::DateTime.new(__return_value)
    end

    def self.new_now_local
      __return_value = LibGLib.date_time_new_now_local
      GLib::DateTime.new(__return_value)
    end

    def self.new_now_utc
      __return_value = LibGLib.date_time_new_now_utc
      GLib::DateTime.new(__return_value)
    end

    def self.new_utc(year, month, day, hour, minute, seconds)
      __return_value = LibGLib.date_time_new_utc(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def add(timespan)
      __return_value = LibGLib.date_time_add((to_unsafe as LibGLib::DateTime*), Int64.new(timespan))
      GLib::DateTime.new(__return_value)
    end

    def add_days(days)
      __return_value = LibGLib.date_time_add_days((to_unsafe as LibGLib::DateTime*), Int32.new(days))
      GLib::DateTime.new(__return_value)
    end

    def add_full(years, months, days, hours, minutes, seconds)
      __return_value = LibGLib.date_time_add_full((to_unsafe as LibGLib::DateTime*), Int32.new(years), Int32.new(months), Int32.new(days), Int32.new(hours), Int32.new(minutes), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def add_hours(hours)
      __return_value = LibGLib.date_time_add_hours((to_unsafe as LibGLib::DateTime*), Int32.new(hours))
      GLib::DateTime.new(__return_value)
    end

    def add_minutes(minutes)
      __return_value = LibGLib.date_time_add_minutes((to_unsafe as LibGLib::DateTime*), Int32.new(minutes))
      GLib::DateTime.new(__return_value)
    end

    def add_months(months)
      __return_value = LibGLib.date_time_add_months((to_unsafe as LibGLib::DateTime*), Int32.new(months))
      GLib::DateTime.new(__return_value)
    end

    def add_seconds(seconds)
      __return_value = LibGLib.date_time_add_seconds((to_unsafe as LibGLib::DateTime*), Float64.new(seconds))
      GLib::DateTime.new(__return_value)
    end

    def add_weeks(weeks)
      __return_value = LibGLib.date_time_add_weeks((to_unsafe as LibGLib::DateTime*), Int32.new(weeks))
      GLib::DateTime.new(__return_value)
    end

    def add_years(years)
      __return_value = LibGLib.date_time_add_years((to_unsafe as LibGLib::DateTime*), Int32.new(years))
      GLib::DateTime.new(__return_value)
    end

    def difference(_begin)
      __return_value = LibGLib.date_time_difference((to_unsafe as LibGLib::DateTime*), (_begin.to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def format(format)
      __return_value = LibGLib.date_time_format((to_unsafe as LibGLib::DateTime*), format)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def day_of_month
      __return_value = LibGLib.date_time_get_day_of_month((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def day_of_week
      __return_value = LibGLib.date_time_get_day_of_week((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def day_of_year
      __return_value = LibGLib.date_time_get_day_of_year((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def hour
      __return_value = LibGLib.date_time_get_hour((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def microsecond
      __return_value = LibGLib.date_time_get_microsecond((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def minute
      __return_value = LibGLib.date_time_get_minute((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def month
      __return_value = LibGLib.date_time_get_month((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def second
      __return_value = LibGLib.date_time_get_second((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def seconds
      __return_value = LibGLib.date_time_get_seconds((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def timezone_abbreviation
      __return_value = LibGLib.date_time_get_timezone_abbreviation((to_unsafe as LibGLib::DateTime*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def utc_offset
      __return_value = LibGLib.date_time_get_utc_offset((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def week_numbering_year
      __return_value = LibGLib.date_time_get_week_numbering_year((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def week_of_year
      __return_value = LibGLib.date_time_get_week_of_year((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def year
      __return_value = LibGLib.date_time_get_year((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def ymd(year, month, day)
      __return_value = LibGLib.date_time_get_ymd((to_unsafe as LibGLib::DateTime*), Int32.new(year), Int32.new(month), Int32.new(day))
      __return_value
    end

    def daylight_savings?
      __return_value = LibGLib.date_time_is_daylight_savings((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def ref
      __return_value = LibGLib.date_time_ref((to_unsafe as LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def to_local
      __return_value = LibGLib.date_time_to_local((to_unsafe as LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def to_timeval(tv)
      __return_value = LibGLib.date_time_to_timeval((to_unsafe as LibGLib::DateTime*), (tv.to_unsafe as LibGLib::TimeVal*))
      __return_value
    end

    def to_timezone(tz)
      __return_value = LibGLib.date_time_to_timezone((to_unsafe as LibGLib::DateTime*), (tz.to_unsafe as LibGLib::TimeZone*))
      GLib::DateTime.new(__return_value)
    end

    def to_unix
      __return_value = LibGLib.date_time_to_unix((to_unsafe as LibGLib::DateTime*))
      __return_value
    end

    def to_utc
      __return_value = LibGLib.date_time_to_utc((to_unsafe as LibGLib::DateTime*))
      GLib::DateTime.new(__return_value)
    end

    def unref
      __return_value = LibGLib.date_time_unref((to_unsafe as LibGLib::DateTime*))
      __return_value
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

