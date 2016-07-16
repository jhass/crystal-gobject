require "./container_accessible"

module Gtk
  class TextViewAccessible < ContainerAccessible
    @gtk_text_view_accessible : LibGtk::TextViewAccessible*?
    def initialize(@gtk_text_view_accessible : LibGtk::TextViewAccessible*)
    end

    def to_unsafe
      @gtk_text_view_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements EditableText
    # Implements StreamableContent
    # Implements Text
  end
end

