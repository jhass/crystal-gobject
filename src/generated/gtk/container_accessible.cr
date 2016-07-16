require "./widget_accessible"

module Gtk
  class ContainerAccessible < WidgetAccessible
    @gtk_container_accessible : LibGtk::ContainerAccessible*?
    def initialize(@gtk_container_accessible : LibGtk::ContainerAccessible*)
    end

    def to_unsafe
      @gtk_container_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

