require "./button_accessible"

module Gtk
  class LinkButtonAccessible < ButtonAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::LinkButtonAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LinkButtonAccessible*)
    end

    # Implements Action
    # Implements Component
    # Implements HyperlinkImpl
    # Implements Image
  end
end

