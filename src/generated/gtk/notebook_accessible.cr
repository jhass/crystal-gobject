require "./container_accessible"

module Gtk
  class NotebookAccessible < ContainerAccessible
    @gtk_notebook_accessible : LibGtk::NotebookAccessible*?
    def initialize(@gtk_notebook_accessible : LibGtk::NotebookAccessible*)
    end

    def to_unsafe
      @gtk_notebook_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Selection
  end
end

