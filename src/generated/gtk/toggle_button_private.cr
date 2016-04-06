module Gtk
  class ToggleButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_toggle_button_private)
    end

    def to_unsafe
      @gtk_toggle_button_private.not_nil!
    end

  end
end

