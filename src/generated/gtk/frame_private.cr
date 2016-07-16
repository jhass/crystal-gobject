module Gtk
  class FramePrivate
    include GObject::WrappedType

    @gtk_frame_private : LibGtk::FramePrivate*?
    def initialize(@gtk_frame_private : LibGtk::FramePrivate*)
    end

    def to_unsafe
      @gtk_frame_private.not_nil!.as(Void*)
    end

  end
end

