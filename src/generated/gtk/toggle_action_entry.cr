module Gtk
  class ToggleActionEntry
    include GObject::WrappedType

    @gtk_toggle_action_entry : LibGtk::ToggleActionEntry*?
    def initialize(@gtk_toggle_action_entry : LibGtk::ToggleActionEntry*)
    end

    def to_unsafe
      @gtk_toggle_action_entry.not_nil!
    end

  end
end

