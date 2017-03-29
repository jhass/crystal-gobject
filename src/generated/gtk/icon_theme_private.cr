module Gtk
  class IconThemePrivate
    include GObject::WrappedType

    @gtk_icon_theme_private : LibGtk::IconThemePrivate*?
    def initialize(@gtk_icon_theme_private : LibGtk::IconThemePrivate*)
    end

    def to_unsafe
      @gtk_icon_theme_private.not_nil!
    end

  end
end

