module Gtk
  class FrameAccessiblePrivate
    include GObject::WrappedType

    @gtk_frame_accessible_private : LibGtk::FrameAccessiblePrivate*?
    def initialize(@gtk_frame_accessible_private : LibGtk::FrameAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_frame_accessible_private.not_nil!
    end

  end
end

