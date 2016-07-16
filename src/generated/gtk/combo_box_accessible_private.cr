module Gtk
  class ComboBoxAccessiblePrivate
    include GObject::WrappedType

    @gtk_combo_box_accessible_private : LibGtk::ComboBoxAccessiblePrivate*?
    def initialize(@gtk_combo_box_accessible_private : LibGtk::ComboBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_combo_box_accessible_private.not_nil!.as(Void*)
    end

  end
end

