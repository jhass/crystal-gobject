module Gtk
  class ToggleActionPrivate
    include GObject::WrappedType

    @gtk_toggle_action_private : LibGtk::ToggleActionPrivate*?
    def initialize(@gtk_toggle_action_private : LibGtk::ToggleActionPrivate*)
    end

    def to_unsafe
      @gtk_toggle_action_private.not_nil!
    end

  end
end

