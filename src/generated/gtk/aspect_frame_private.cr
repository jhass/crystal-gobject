module Gtk
  class AspectFramePrivate
    include GObject::WrappedType

    def initialize(@gtk_aspect_frame_private)
    end

    def to_unsafe
      @gtk_aspect_frame_private.not_nil!
    end

  end
end

