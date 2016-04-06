module Gtk
  class SpinButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_spin_button_private)
    end

    def to_unsafe
      @gtk_spin_button_private.not_nil!
    end

  end
end

