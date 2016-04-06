module Gst
  class BinPrivate
    include GObject::WrappedType

    def initialize(@gst_bin_private)
    end

    def to_unsafe
      @gst_bin_private.not_nil!
    end

  end
end

