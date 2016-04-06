module Gtk
  class RadioButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_radio_button_accessible_private)
    end

    def to_unsafe
      @gtk_radio_button_accessible_private.not_nil!
    end

  end
end

