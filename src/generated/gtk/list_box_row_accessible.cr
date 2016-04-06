require "./container_accessible"

module Gtk
  class ListBoxRowAccessible < ContainerAccessible
    def initialize(@gtk_list_box_row_accessible)
    end

    def to_unsafe
      @gtk_list_box_row_accessible.not_nil!
    end

    # Implements Component
  end
end

