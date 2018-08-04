module Gst
  class DateTime
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DateTime*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DateTime*)
    end

    def self.new(tzoffset, year, month, day, hour, minute, seconds) : self
      __return_value = LibGst.date_time_new(Float32.new(tzoffset), Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      cast Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_g_date_time(dt) : self
      __return_value = LibGst.date_time_new_from_g_date_time(dt.to_unsafe.as(LibGLib::DateTime*))
      cast Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_iso8601_string(string) : self
      __return_value = LibGst.date_time_new_from_iso8601_string(string.to_unsafe)
      cast Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_from_unix_epoch_local_time(secs) : self
      __return_value = LibGst.date_time_new_from_unix_epoch_local_time(Int64.new(secs))
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_from_unix_epoch_utc(secs) : self
      __return_value = LibGst.date_time_new_from_unix_epoch_utc(Int64.new(secs))
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_local_time(year, month, day, hour, minute, seconds) : self
      __return_value = LibGst.date_time_new_local_time(Int32.new(year), Int32.new(month), Int32.new(day), Int32.new(hour), Int32.new(minute), Float64.new(seconds))
      cast Gst::DateTime.new(__return_value) if __return_value
    end

    def self.new_now_local_time : self
      __return_value = LibGst.date_time_new_now_local_time
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_now_utc : self
      __return_value = LibGst.date_time_new_now_utc
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_y(year) : self
      __return_value = LibGst.date_time_new_y(Int32.new(year))
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_ym(year, month) : self
      __return_value = LibGst.date_time_new_ym(Int32.new(year), Int32.new(month))
      cast Gst::DateTime.new(__return_value)
    end

    def self.new_ymd(year, month, day) : self
      __return_value = LibGst.date_time_new_ymd(Int32.new(year), Int32.new(month), Int32.new(day))
      cast Gst::DateTime.new(__return_value)
    end

    def day
      __return_value = LibGst.date_time_get_day(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def hour
      __return_value = LibGst.date_time_get_hour(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def microsecond
      __return_value = LibGst.date_time_get_microsecond(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def minute
      __return_value = LibGst.date_time_get_minute(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def month
      __return_value = LibGst.date_time_get_month(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def second
      __return_value = LibGst.date_time_get_second(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def time_zone_offset
      __return_value = LibGst.date_time_get_time_zone_offset(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def year
      __return_value = LibGst.date_time_get_year(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def has_day
      __return_value = LibGst.date_time_has_day(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def has_month
      __return_value = LibGst.date_time_has_month(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def has_second
      __return_value = LibGst.date_time_has_second(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def has_time
      __return_value = LibGst.date_time_has_time(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def has_year
      __return_value = LibGst.date_time_has_year(@pointer.as(LibGst::DateTime*))
      __return_value
    end

    def ref
      __return_value = LibGst.date_time_ref(@pointer.as(LibGst::DateTime*))
      Gst::DateTime.new(__return_value)
    end

    def to_g_date_time
      __return_value = LibGst.date_time_to_g_date_time(@pointer.as(LibGst::DateTime*))
      GLib::DateTime.new(__return_value) if __return_value
    end

    def to_iso8601_string
      __return_value = LibGst.date_time_to_iso8601_string(@pointer.as(LibGst::DateTime*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def unref
      LibGst.date_time_unref(@pointer.as(LibGst::DateTime*))
      nil
    end

  end
end

