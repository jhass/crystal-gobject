require "./container_accessible"

module Gtk
  class NotebookAccessible < ContainerAccessible
    def initialize(@gtk_notebook_accessible)
    end

    def to_unsafe
      @gtk_notebook_accessible.not_nil!
    end

    # Implements Component
    # Implements Selection
  end
end

