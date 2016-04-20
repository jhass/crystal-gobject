module Gst
  class Bitmask
    include GObject::WrappedType

    @gst_bitmask : LibGst::Bitmask*?
    def initialize(@gst_bitmask : LibGst::Bitmask*)
    end

    def to_unsafe
      @gst_bitmask.not_nil!
    end

  end
end

