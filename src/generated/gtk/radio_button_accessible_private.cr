module Gtk
  class RadioButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_radio_button_accessible_private : LibGtk::RadioButtonAccessiblePrivate*?
    def initialize(@gtk_radio_button_accessible_private : LibGtk::RadioButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_radio_button_accessible_private.not_nil!
    end

  end
end

