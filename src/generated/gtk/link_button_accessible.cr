require "./button_accessible"

module Gtk
  class LinkButtonAccessible < ButtonAccessible
    def initialize(@gtk_link_button_accessible)
    end

    def to_unsafe
      @gtk_link_button_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements HyperlinkImpl
    # Implements Image
  end
end

