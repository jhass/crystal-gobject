require "./entry_accessible"

module Gtk
  class SpinButtonAccessible < EntryAccessible
    def initialize(@gtk_spin_button_accessible)
    end

    def to_unsafe
      @gtk_spin_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements EditableText
    # Implements Text
    # Implements Value
  end
end

