require "./container_accessible"

module Gtk
  class StackAccessible < ContainerAccessible
    @gtk_stack_accessible : LibGtk::StackAccessible*?
    def initialize(@gtk_stack_accessible : LibGtk::StackAccessible*)
    end

    def to_unsafe
      @gtk_stack_accessible.not_nil!
    end

    # Implements Component
  end
end

