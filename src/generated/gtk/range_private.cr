module Gtk
  class RangePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RangePrivate*))
    end

    @gtk_range_private : LibGtk::RangePrivate*?
    def initialize(@gtk_range_private : LibGtk::RangePrivate*)
    end

    def to_unsafe
      @gtk_range_private.not_nil!.as(Void*)
    end

  end
end

