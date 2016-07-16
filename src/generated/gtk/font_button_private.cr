module Gtk
  class FontButtonPrivate
    include GObject::WrappedType

    @gtk_font_button_private : LibGtk::FontButtonPrivate*?
    def initialize(@gtk_font_button_private : LibGtk::FontButtonPrivate*)
    end

    def to_unsafe
      @gtk_font_button_private.not_nil!.as(Void*)
    end

  end
end

