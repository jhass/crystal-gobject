require "./container_accessible"

module Gtk
  class PanedAccessible < ContainerAccessible
    @gtk_paned_accessible : LibGtk::PanedAccessible*?
    def initialize(@gtk_paned_accessible : LibGtk::PanedAccessible*)
    end

    def to_unsafe
      @gtk_paned_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Value
  end
end

