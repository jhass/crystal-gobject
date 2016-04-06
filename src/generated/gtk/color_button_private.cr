module Gtk
  class ColorButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_color_button_private)
    end

    def to_unsafe
      @gtk_color_button_private.not_nil!
    end

  end
end

