require "./container_accessible"

module Gtk
  class FrameAccessible < ContainerAccessible
    def initialize(@gtk_frame_accessible)
    end

    def to_unsafe
      @gtk_frame_accessible.not_nil!
    end

    # Implements Component
  end
end

