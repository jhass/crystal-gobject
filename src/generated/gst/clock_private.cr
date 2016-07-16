module Gst
  class ClockPrivate
    include GObject::WrappedType

    @gst_clock_private : LibGst::ClockPrivate*?
    def initialize(@gst_clock_private : LibGst::ClockPrivate*)
    end

    def to_unsafe
      @gst_clock_private.not_nil!.as(Void*)
    end

  end
end

