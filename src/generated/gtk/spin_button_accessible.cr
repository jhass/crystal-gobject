require "./entry_accessible"

module Gtk
  class SpinButtonAccessible < EntryAccessible
    @gtk_spin_button_accessible : LibGtk::SpinButtonAccessible*?
    def initialize(@gtk_spin_button_accessible : LibGtk::SpinButtonAccessible*)
    end

    def to_unsafe
      @gtk_spin_button_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements EditableText
    # Implements Text
    # Implements Value
  end
end

