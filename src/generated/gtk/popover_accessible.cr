require "./container_accessible"

module Gtk
  class PopoverAccessible < ContainerAccessible
    def initialize(@gtk_popover_accessible)
    end

    def to_unsafe
      @gtk_popover_accessible.not_nil!
    end

    # Implements Component
  end
end

