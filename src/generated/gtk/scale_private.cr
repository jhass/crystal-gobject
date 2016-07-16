module Gtk
  class ScalePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScalePrivate*))
    end

    @gtk_scale_private : LibGtk::ScalePrivate*?
    def initialize(@gtk_scale_private : LibGtk::ScalePrivate*)
    end

    def to_unsafe
      @gtk_scale_private.not_nil!
    end

  end
end

