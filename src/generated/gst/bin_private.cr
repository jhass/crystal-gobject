module Gst
  class BinPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::BinPrivate*))
    end

    @gst_bin_private : LibGst::BinPrivate*?
    def initialize(@gst_bin_private : LibGst::BinPrivate*)
    end

    def to_unsafe
      @gst_bin_private.not_nil!.as(Void*)
    end

  end
end

