require "./container_accessible"

module Gtk
  class ListBoxAccessible < ContainerAccessible
    @gtk_list_box_accessible : LibGtk::ListBoxAccessible*?
    def initialize(@gtk_list_box_accessible : LibGtk::ListBoxAccessible*)
    end

    def to_unsafe
      @gtk_list_box_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Selection
  end
end

