require "./container_accessible"

module Gtk
  class PopoverAccessible < ContainerAccessible
    @gtk_popover_accessible : LibGtk::PopoverAccessible*?
    def initialize(@gtk_popover_accessible : LibGtk::PopoverAccessible*)
    end

    def to_unsafe
      @gtk_popover_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

