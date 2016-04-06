module Gtk
  class FontSelectionPrivate
    include GObject::WrappedType

    def initialize(@gtk_font_selection_private)
    end

    def to_unsafe
      @gtk_font_selection_private.not_nil!
    end

  end
end

