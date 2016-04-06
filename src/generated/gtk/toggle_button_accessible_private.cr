module Gtk
  class ToggleButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_toggle_button_accessible_private)
    end

    def to_unsafe
      @gtk_toggle_button_accessible_private.not_nil!
    end

  end
end

