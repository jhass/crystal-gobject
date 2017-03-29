module Gtk
  class SpinButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_spin_button_accessible_private : LibGtk::SpinButtonAccessiblePrivate*?
    def initialize(@gtk_spin_button_accessible_private : LibGtk::SpinButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_spin_button_accessible_private.not_nil!
    end

  end
end

