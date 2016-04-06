require "./container_accessible"

module Gtk
  class ListBoxAccessible < ContainerAccessible
    def initialize(@gtk_list_box_accessible)
    end

    def to_unsafe
      @gtk_list_box_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

