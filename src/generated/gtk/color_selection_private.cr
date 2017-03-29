module Gtk
  class ColorSelectionPrivate
    include GObject::WrappedType

    @gtk_color_selection_private : LibGtk::ColorSelectionPrivate*?
    def initialize(@gtk_color_selection_private : LibGtk::ColorSelectionPrivate*)
    end

    def to_unsafe
      @gtk_color_selection_private.not_nil!
    end

  end
end

