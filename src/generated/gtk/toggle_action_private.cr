module Gtk
  class ToggleActionPrivate
    include GObject::WrappedType

    def initialize(@gtk_toggle_action_private)
    end

    def to_unsafe
      @gtk_toggle_action_private.not_nil!
    end

  end
end

