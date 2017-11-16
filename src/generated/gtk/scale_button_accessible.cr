require "./button_accessible"

module Gtk
  class ScaleButtonAccessible < ButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::ScaleButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScaleButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
    # Implements Value
  end
end

