module Gtk
  class RangeAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RangeAccessiblePrivate*))
    end

    @gtk_range_accessible_private : LibGtk::RangeAccessiblePrivate*?
    def initialize(@gtk_range_accessible_private : LibGtk::RangeAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_range_accessible_private.not_nil!
    end

  end
end

