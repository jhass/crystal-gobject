module Gtk
  class ColorButtonPrivate
    include GObject::WrappedType

    @gtk_color_button_private : LibGtk::ColorButtonPrivate*?
    def initialize(@gtk_color_button_private : LibGtk::ColorButtonPrivate*)
    end

    def to_unsafe
      @gtk_color_button_private.not_nil!
    end

  end
end

