module Gtk
  class ComboBoxTextPrivate
    include GObject::WrappedType

    @gtk_combo_box_text_private : LibGtk::ComboBoxTextPrivate*?
    def initialize(@gtk_combo_box_text_private : LibGtk::ComboBoxTextPrivate*)
    end

    def to_unsafe
      @gtk_combo_box_text_private.not_nil!
    end

  end
end

