module Gtk
  class IconFactoryPrivate
    include GObject::WrappedType

    @gtk_icon_factory_private : LibGtk::IconFactoryPrivate*?
    def initialize(@gtk_icon_factory_private : LibGtk::IconFactoryPrivate*)
    end

    def to_unsafe
      @gtk_icon_factory_private.not_nil!.as(Void*)
    end

  end
end

