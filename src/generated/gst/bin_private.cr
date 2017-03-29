module Gst
  class BinPrivate
    include GObject::WrappedType

    @gst_bin_private : LibGst::BinPrivate*?
    def initialize(@gst_bin_private : LibGst::BinPrivate*)
    end

    def to_unsafe
      @gst_bin_private.not_nil!
    end

  end
end

