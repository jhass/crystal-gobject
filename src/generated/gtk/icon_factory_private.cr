module Gtk
  class IconFactoryPrivate
    include GObject::WrappedType

    def initialize(@gtk_icon_factory_private)
    end

    def to_unsafe
      @gtk_icon_factory_private.not_nil!
    end

  end
end

