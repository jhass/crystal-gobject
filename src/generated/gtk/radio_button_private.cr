module Gtk
  class RadioButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_radio_button_private)
    end

    def to_unsafe
      @gtk_radio_button_private.not_nil!
    end

  end
end

