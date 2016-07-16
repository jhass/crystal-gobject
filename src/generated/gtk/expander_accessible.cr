require "./container_accessible"

module Gtk
  class ExpanderAccessible < ContainerAccessible
    @gtk_expander_accessible : LibGtk::ExpanderAccessible*?
    def initialize(@gtk_expander_accessible : LibGtk::ExpanderAccessible*)
    end

    def to_unsafe
      @gtk_expander_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
  end
end

