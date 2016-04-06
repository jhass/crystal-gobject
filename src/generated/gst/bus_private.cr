module Gst
  class BusPrivate
    include GObject::WrappedType

    def initialize(@gst_bus_private)
    end

    def to_unsafe
      @gst_bus_private.not_nil!
    end

  end
end

