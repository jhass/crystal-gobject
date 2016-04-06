module Gtk
  class ComboBoxAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_combo_box_accessible_private)
    end

    def to_unsafe
      @gtk_combo_box_accessible_private.not_nil!
    end

  end
end

