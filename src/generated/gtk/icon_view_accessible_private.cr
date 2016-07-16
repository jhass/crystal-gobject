module Gtk
  class IconViewAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::IconViewAccessiblePrivate*))
    end

    @gtk_icon_view_accessible_private : LibGtk::IconViewAccessiblePrivate*?
    def initialize(@gtk_icon_view_accessible_private : LibGtk::IconViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_icon_view_accessible_private.not_nil!
    end

  end
end

