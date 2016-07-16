module Gtk
  class FramePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FramePrivate*))
    end

    @gtk_frame_private : LibGtk::FramePrivate*?
    def initialize(@gtk_frame_private : LibGtk::FramePrivate*)
    end

    def to_unsafe
      @gtk_frame_private.not_nil!.as(Void*)
    end

  end
end

