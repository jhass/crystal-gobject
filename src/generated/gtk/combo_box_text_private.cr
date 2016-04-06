module Gtk
  class ComboBoxTextPrivate
    include GObject::WrappedType

    def initialize(@gtk_combo_box_text_private)
    end

    def to_unsafe
      @gtk_combo_box_text_private.not_nil!
    end

  end
end

