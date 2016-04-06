module Gtk
  class ComboBoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_combo_box_private)
    end

    def to_unsafe
      @gtk_combo_box_private.not_nil!
    end

  end
end

