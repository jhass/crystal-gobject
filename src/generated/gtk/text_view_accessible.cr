require "./container_accessible"

module Gtk
  class TextViewAccessible < ContainerAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::TextViewAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextViewAccessible*)
    end

    # Implements Component
    # Implements EditableText
    # Implements StreamableContent
    # Implements Text
  end
end

