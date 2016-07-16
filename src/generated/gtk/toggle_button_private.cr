module Gtk
  class ToggleButtonPrivate
    include GObject::WrappedType

    @gtk_toggle_button_private : LibGtk::ToggleButtonPrivate*?
    def initialize(@gtk_toggle_button_private : LibGtk::ToggleButtonPrivate*)
    end

    def to_unsafe
      @gtk_toggle_button_private.not_nil!.as(Void*)
    end

  end
end

