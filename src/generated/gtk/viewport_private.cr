module Gtk
  class ViewportPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ViewportPrivate*))
    end

    @gtk_viewport_private : LibGtk::ViewportPrivate*?
    def initialize(@gtk_viewport_private : LibGtk::ViewportPrivate*)
    end

    def to_unsafe
      @gtk_viewport_private.not_nil!.as(Void*)
    end

  end
end

