module Gtk
  class FrameAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FrameAccessiblePrivate*))
    end

    @gtk_frame_accessible_private : LibGtk::FrameAccessiblePrivate*?
    def initialize(@gtk_frame_accessible_private : LibGtk::FrameAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_frame_accessible_private.not_nil!
    end

  end
end

