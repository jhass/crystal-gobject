require "./container_accessible"

module Gtk
  class ExpanderAccessible < ContainerAccessible
    def initialize(@gtk_expander_accessible)
    end

    def to_unsafe
      @gtk_expander_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

