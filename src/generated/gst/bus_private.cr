module Gst
  class BusPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::BusPrivate*))
    end

    @gst_bus_private : LibGst::BusPrivate*?
    def initialize(@gst_bus_private : LibGst::BusPrivate*)
    end

    def to_unsafe
      @gst_bus_private.not_nil!
    end

  end
end

