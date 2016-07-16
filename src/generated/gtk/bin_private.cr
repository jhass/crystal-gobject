module Gtk
  class BinPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::BinPrivate*))
    end

    @gtk_bin_private : LibGtk::BinPrivate*?
    def initialize(@gtk_bin_private : LibGtk::BinPrivate*)
    end

    def to_unsafe
      @gtk_bin_private.not_nil!
    end

  end
end

