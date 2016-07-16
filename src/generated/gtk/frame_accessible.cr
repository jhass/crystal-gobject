require "./container_accessible"

module Gtk
  class FrameAccessible < ContainerAccessible
    @gtk_frame_accessible : LibGtk::FrameAccessible*?
    def initialize(@gtk_frame_accessible : LibGtk::FrameAccessible*)
    end

    def to_unsafe
      @gtk_frame_accessible.not_nil!.as(Void*)
    end

    # Implements Component
  end
end

