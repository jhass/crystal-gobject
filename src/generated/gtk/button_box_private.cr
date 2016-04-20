module Gtk
  class ButtonBoxPrivate
    include GObject::WrappedType

    @gtk_button_box_private : LibGtk::ButtonBoxPrivate*?
    def initialize(@gtk_button_box_private : LibGtk::ButtonBoxPrivate*)
    end

    def to_unsafe
      @gtk_button_box_private.not_nil!
    end

  end
end

