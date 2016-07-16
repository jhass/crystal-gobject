module Gtk
  class AspectFramePrivate
    include GObject::WrappedType

    @gtk_aspect_frame_private : LibGtk::AspectFramePrivate*?
    def initialize(@gtk_aspect_frame_private : LibGtk::AspectFramePrivate*)
    end

    def to_unsafe
      @gtk_aspect_frame_private.not_nil!.as(Void*)
    end

  end
end

