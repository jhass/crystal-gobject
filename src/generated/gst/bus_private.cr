module Gst
  class BusPrivate
    include GObject::WrappedType

    @gst_bus_private : LibGst::BusPrivate*?
    def initialize(@gst_bus_private : LibGst::BusPrivate*)
    end

    def to_unsafe
      @gst_bus_private.not_nil!.as(Void*)
    end

  end
end

