module Gtk
  class ButtonBoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_button_box_private)
    end

    def to_unsafe
      @gtk_button_box_private.not_nil!
    end

  end
end

