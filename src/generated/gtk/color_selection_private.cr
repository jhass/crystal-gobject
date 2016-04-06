module Gtk
  class ColorSelectionPrivate
    include GObject::WrappedType

    def initialize(@gtk_color_selection_private)
    end

    def to_unsafe
      @gtk_color_selection_private.not_nil!
    end

  end
end

