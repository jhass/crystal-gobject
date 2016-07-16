module Gtk
  class ScaleAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScaleAccessiblePrivate*))
    end

    @gtk_scale_accessible_private : LibGtk::ScaleAccessiblePrivate*?
    def initialize(@gtk_scale_accessible_private : LibGtk::ScaleAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_scale_accessible_private.not_nil!.as(Void*)
    end

  end
end

