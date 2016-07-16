require "./container_accessible"

module Gtk
  class ListBoxRowAccessible < ContainerAccessible
    @gtk_list_box_row_accessible : LibGtk::ListBoxRowAccessible*?
    def initialize(@gtk_list_box_row_accessible : LibGtk::ListBoxRowAccessible*)
    end

    def to_unsafe
      @gtk_list_box_row_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

