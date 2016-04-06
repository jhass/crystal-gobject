require "./container_accessible"

module Gtk
  class TextViewAccessible < ContainerAccessible
    def initialize(@gtk_text_view_accessible)
    end

    def to_unsafe
      @gtk_text_view_accessible.not_nil!
    end

    # Implements Component
    # Implements EditableText
    # Implements StreamableContent
    # Implements Text
  end
end

