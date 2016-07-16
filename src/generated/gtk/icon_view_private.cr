module Gtk
  class IconViewPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::IconViewPrivate*))
    end

    @gtk_icon_view_private : LibGtk::IconViewPrivate*?
    def initialize(@gtk_icon_view_private : LibGtk::IconViewPrivate*)
    end

    def to_unsafe
      @gtk_icon_view_private.not_nil!
    end

  end
end

