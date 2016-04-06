require "./button_accessible"

module Gtk
  class LockButtonAccessible < ButtonAccessible
    def initialize(@gtk_lock_button_accessible)
    end

    def to_unsafe
      @gtk_lock_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

