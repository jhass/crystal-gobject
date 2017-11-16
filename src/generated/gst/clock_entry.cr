module Gst
  class ClockEntry
    include GObject::WrappedType

    def self.new(refcount : Int32|Nil = nil, clock : Gst::Clock|Nil = nil, type : Gst::ClockEntryType|Nil = nil, time : UInt64|Nil = nil, interval : UInt64|Nil = nil, status : Gst::ClockReturn|Nil = nil, func : Gst::ClockCallback|Nil = nil, user_data : Void*|Nil = nil, destroy_data : GLib::DestroyNotify|Nil = nil, unscheduled : Bool|Nil = nil, woken_up : Bool|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(112, 0u8)
      new(ptr.as(LibGst::ClockEntry*)).tap do |object|
        object.refcount = refcount unless refcount.nil?
        object.clock = clock unless clock.nil?
        object.type = type unless type.nil?
        object.time = time unless time.nil?
        object.interval = interval unless interval.nil?
        object.status = status unless status.nil?
        object.func = func unless func.nil?
        object.user_data = user_data unless user_data.nil?
        object.destroy_data = destroy_data unless destroy_data.nil?
        object.unscheduled = unscheduled unless unscheduled.nil?
        object.woken_up = woken_up unless woken_up.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::ClockEntry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ClockEntry*)
    end

    def refcount
      (to_unsafe.as(LibGst::ClockEntry*).value.refcount)
    end

    def refcount=(value : Int32)
      to_unsafe.as(LibGst::ClockEntry*).value.refcount = Int32.new(value)
    end

    def clock
      Gst::Clock.new((to_unsafe.as(LibGst::ClockEntry*).value.clock))
    end

    def clock=(value : Gst::Clock)
      to_unsafe.as(LibGst::ClockEntry*).value.clock = value.to_unsafe.as(LibGst::Clock*)
    end

    def type
      (to_unsafe.as(LibGst::ClockEntry*).value.type)
    end

    def type=(value : Gst::ClockEntryType)
      to_unsafe.as(LibGst::ClockEntry*).value.type = value
    end

    def time
      (to_unsafe.as(LibGst::ClockEntry*).value.time)
    end

    def time=(value : UInt64)
      to_unsafe.as(LibGst::ClockEntry*).value.time = UInt64.new(value)
    end

    def interval
      (to_unsafe.as(LibGst::ClockEntry*).value.interval)
    end

    def interval=(value : UInt64)
      to_unsafe.as(LibGst::ClockEntry*).value.interval = UInt64.new(value)
    end

    def status
      (to_unsafe.as(LibGst::ClockEntry*).value.status)
    end

    def status=(value : Gst::ClockReturn)
      to_unsafe.as(LibGst::ClockEntry*).value.status = value
    end

    def func
      (to_unsafe.as(LibGst::ClockEntry*).value.func)
    end

    def func=(value : Gst::ClockCallback)
      to_unsafe.as(LibGst::ClockEntry*).value.func = value
    end

    def user_data
      (to_unsafe.as(LibGst::ClockEntry*).value.user_data)
    end

    def user_data=(value : Void*)
      to_unsafe.as(LibGst::ClockEntry*).value.user_data = value
    end

    def destroy_data
      (to_unsafe.as(LibGst::ClockEntry*).value.destroy_data)
    end

    def destroy_data=(value : GLib::DestroyNotify)
      to_unsafe.as(LibGst::ClockEntry*).value.destroy_data = value
    end

    def unscheduled
      (to_unsafe.as(LibGst::ClockEntry*).value.unscheduled)
    end

    def unscheduled=(value : Bool)
      to_unsafe.as(LibGst::ClockEntry*).value.unscheduled = value
    end

    def woken_up
      (to_unsafe.as(LibGst::ClockEntry*).value.woken_up)
    end

    def woken_up=(value : Bool)
      to_unsafe.as(LibGst::ClockEntry*).value.woken_up = value
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::ClockEntry*).value._gst_reserved)) {|__item| __item }
    end

  end
end

