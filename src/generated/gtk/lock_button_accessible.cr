require "./button_accessible"

module Gtk
  class LockButtonAccessible < ButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::LockButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LockButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
  end
end

