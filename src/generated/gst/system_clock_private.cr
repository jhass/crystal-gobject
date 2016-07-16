module Gst
  class SystemClockPrivate
    include GObject::WrappedType

    @gst_system_clock_private : LibGst::SystemClockPrivate*?
    def initialize(@gst_system_clock_private : LibGst::SystemClockPrivate*)
    end

    def to_unsafe
      @gst_system_clock_private.not_nil!.as(Void*)
    end

  end
end

