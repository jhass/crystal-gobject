module Gtk
  class SpinButtonPrivate
    include GObject::WrappedType

    @gtk_spin_button_private : LibGtk::SpinButtonPrivate*?
    def initialize(@gtk_spin_button_private : LibGtk::SpinButtonPrivate*)
    end

    def to_unsafe
      @gtk_spin_button_private.not_nil!.as(Void*)
    end

  end
end

