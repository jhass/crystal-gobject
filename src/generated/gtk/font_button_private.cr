module Gtk
  class FontButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_font_button_private)
    end

    def to_unsafe
      @gtk_font_button_private.not_nil!
    end

  end
end

