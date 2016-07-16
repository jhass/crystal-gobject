module Gtk
  class IconThemePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::IconThemePrivate*))
    end

    @gtk_icon_theme_private : LibGtk::IconThemePrivate*?
    def initialize(@gtk_icon_theme_private : LibGtk::IconThemePrivate*)
    end

    def to_unsafe
      @gtk_icon_theme_private.not_nil!.as(Void*)
    end

  end
end

