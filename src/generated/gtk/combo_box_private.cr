module Gtk
  class ComboBoxPrivate
    include GObject::WrappedType

    @gtk_combo_box_private : LibGtk::ComboBoxPrivate*?
    def initialize(@gtk_combo_box_private : LibGtk::ComboBoxPrivate*)
    end

    def to_unsafe
      @gtk_combo_box_private.not_nil!.as(Void*)
    end

  end
end

