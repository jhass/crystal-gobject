module Gtk
  class ToggleActionEntry
    include GObject::WrappedType

    def initialize(@gtk_toggle_action_entry)
    end

    def to_unsafe
      @gtk_toggle_action_entry.not_nil!
    end

  end
end

