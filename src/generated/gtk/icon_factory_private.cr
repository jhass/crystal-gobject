module Gtk
  class IconFactoryPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::IconFactoryPrivate*))
    end

    @gtk_icon_factory_private : LibGtk::IconFactoryPrivate*?
    def initialize(@gtk_icon_factory_private : LibGtk::IconFactoryPrivate*)
    end

    def to_unsafe
      @gtk_icon_factory_private.not_nil!
    end

  end
end

