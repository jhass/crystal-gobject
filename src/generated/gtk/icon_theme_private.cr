module Gtk
  class IconThemePrivate
    include GObject::WrappedType

    def initialize(@gtk_icon_theme_private)
    end

    def to_unsafe
      @gtk_icon_theme_private.not_nil!
    end

  end
end

