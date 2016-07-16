module GLib
  class TimeVal
    include GObject::WrappedType

    def self.new(tv_sec : Int64|Nil = nil, tv_usec : Int64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::TimeVal*)).tap do |object|
        object.tv_sec = tv_sec unless tv_sec.nil?
        object.tv_usec = tv_usec unless tv_usec.nil?
      end
    end

    @g_lib_time_val : LibGLib::TimeVal*?
    def initialize(@g_lib_time_val : LibGLib::TimeVal*)
    end

    def to_unsafe
      @g_lib_time_val.not_nil!.as(Void*)
    end

    def add(microseconds)
      __return_value = LibGLib.time_val_add(to_unsafe.as(LibGLib::TimeVal*), Int64.new(microseconds))
      __return_value
    end

    def to_iso8601
      __return_value = LibGLib.time_val_to_iso8601(to_unsafe.as(LibGLib::TimeVal*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.from_iso8601(iso_date, time)
      __return_value = LibGLib.time_val_from_iso8601(iso_date.to_unsafe, time)
      __return_value
    end

    def tv_sec
      (to_unsafe.value.tv_sec)
    end

    def tv_sec=(value : Int64)
      to_unsafe.value.tv_sec = Int64.new(value)
    end

    def tv_usec
      (to_unsafe.value.tv_usec)
    end

    def tv_usec=(value : Int64)
      to_unsafe.value.tv_usec = Int64.new(value)
    end

  end
end

