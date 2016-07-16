module Gtk
  class AspectFramePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AspectFramePrivate*))
    end

    @gtk_aspect_frame_private : LibGtk::AspectFramePrivate*?
    def initialize(@gtk_aspect_frame_private : LibGtk::AspectFramePrivate*)
    end

    def to_unsafe
      @gtk_aspect_frame_private.not_nil!.as(Void*)
    end

  end
end

