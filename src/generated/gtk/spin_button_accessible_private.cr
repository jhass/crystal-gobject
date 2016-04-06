module Gtk
  class SpinButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_spin_button_accessible_private)
    end

    def to_unsafe
      @gtk_spin_button_accessible_private.not_nil!
    end

  end
end

