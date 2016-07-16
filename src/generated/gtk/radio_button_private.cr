module Gtk
  class RadioButtonPrivate
    include GObject::WrappedType

    @gtk_radio_button_private : LibGtk::RadioButtonPrivate*?
    def initialize(@gtk_radio_button_private : LibGtk::RadioButtonPrivate*)
    end

    def to_unsafe
      @gtk_radio_button_private.not_nil!.as(Void*)
    end

  end
end

