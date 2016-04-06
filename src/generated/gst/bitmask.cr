module Gst
  class Bitmask
    include GObject::WrappedType

    def initialize(@gst_bitmask)
    end

    def to_unsafe
      @gst_bitmask.not_nil!
    end

  end
end

