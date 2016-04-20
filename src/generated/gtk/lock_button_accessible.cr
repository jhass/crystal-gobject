require "./button_accessible"

module Gtk
  class LockButtonAccessible < ButtonAccessible
    @gtk_lock_button_accessible : LibGtk::LockButtonAccessible*?
    def initialize(@gtk_lock_button_accessible : LibGtk::LockButtonAccessible*)
    end

    def to_unsafe
      @gtk_lock_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

