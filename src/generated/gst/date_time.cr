module Gst
  class DateTime
    include GObject::WrappedType

    def initialize(@gst_date_time)
    end

    def to_unsafe
      @gst_date_time.not_nil!
    end

    def self.new_internal(tzoffset, year, month, day, hour, minute, seconds)
      __return_value = LibGst.date_time_new(Float32.new(tzoffset), Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      Gst::DateTime.new(__return_value)
    end

    def self.new_from_g_date_time(dt)
      __return_value = LibGst.date_time_new_from_g_date_time((dt.to_unsafe as LibGLib::DateTime*))
      Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_iso8601_string(string)
      __return_value = LibGst.date_time_new_from_iso8601_string(string)
      Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_unix_epoch_local_time(secs)
      __return_value = LibGst.date_time_new_from_unix_epoch_local_time(Int64.new(secs))
      Gst::DateTime.new(__return_value)
    end

    def self.new_from_unix_epoch_utc(secs)
      __return_value = LibGst.date_time_new_from_unix_epoch_utc(Int64.new(secs))
      Gst::DateTime.new(__return_value)
    end

    def self.new_local_time(year, month, day, hour, minute, seconds)
      __return_value = LibGst.date_time_new_local_time(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      Gst::DateTime.new(__return_value)
    end

    def self.new_now_local_time
      __return_value = LibGst.date_time_new_now_local_time
      Gst::DateTime.new(__return_value)
    end

    def self.new_now_utc
      __return_value = LibGst.date_time_new_now_utc
      Gst::DateTime.new(__return_value)
    end

    def self.new_y(year)
      __return_value = LibGst.date_time_new_y(Int32.new(year))
      Gst::DateTime.new(__return_value)
    end

    def self.new_ym(year, month)
      __return_value = LibGst.date_time_new_ym(Int32.new(year), Int32.new(month))
      Gst::DateTime.new(__return_value)
    end

    def self.new_ymd(year, month, day)
      __return_value = LibGst.date_time_new_ymd(Int32.new(year), Int32.new(month), Int32.new(day))
      Gst::DateTime.new(__return_value)
    end

    def day
      __return_value = LibGst.date_time_get_day((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def hour
      __return_value = LibGst.date_time_get_hour((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def microsecond
      __return_value = LibGst.date_time_get_microsecond((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def minute
      __return_value = LibGst.date_time_get_minute((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def month
      __return_value = LibGst.date_time_get_month((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def second
      __return_value = LibGst.date_time_get_second((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def time_zone_offset
      __return_value = LibGst.date_time_get_time_zone_offset((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def year
      __return_value = LibGst.date_time_get_year((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def has_day
      __return_value = LibGst.date_time_has_day((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def has_month
      __return_value = LibGst.date_time_has_month((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def has_second
      __return_value = LibGst.date_time_has_second((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def has_time
      __return_value = LibGst.date_time_has_time((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def has_year
      __return_value = LibGst.date_time_has_year((to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def ref
      __return_value = LibGst.date_time_ref((to_unsafe as LibGst::DateTime*))
      Gst::DateTime.new(__return_value)
    end

    def to_g_date_time
      __return_value = LibGst.date_time_to_g_date_time((to_unsafe as LibGst::DateTime*))
      GLib::DateTime.new(__return_value) if __return_value
    end

    def to_iso8601_string
      __return_value = LibGst.date_time_to_iso8601_string((to_unsafe as LibGst::DateTime*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def unref
      __return_value = LibGst.date_time_unref((to_unsafe as LibGst::DateTime*))
      __return_value
    end

  end
end

