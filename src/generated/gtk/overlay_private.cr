module Gtk
  class OverlayPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::OverlayPrivate*))
    end

    @gtk_overlay_private : LibGtk::OverlayPrivate*?
    def initialize(@gtk_overlay_private : LibGtk::OverlayPrivate*)
    end

    def to_unsafe
      @gtk_overlay_private.not_nil!
    end

  end
end

