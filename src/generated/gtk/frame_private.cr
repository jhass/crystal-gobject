module Gtk
  class FramePrivate
    include GObject::WrappedType

    def initialize(@gtk_frame_private)
    end

    def to_unsafe
      @gtk_frame_private.not_nil!
    end

  end
end

