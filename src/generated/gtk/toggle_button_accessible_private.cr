module Gtk
  class ToggleButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_toggle_button_accessible_private : LibGtk::ToggleButtonAccessiblePrivate*?
    def initialize(@gtk_toggle_button_accessible_private : LibGtk::ToggleButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_toggle_button_accessible_private.not_nil!.as(Void*)
    end

  end
end

