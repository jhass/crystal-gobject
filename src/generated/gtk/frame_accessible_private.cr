module Gtk
  class FrameAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_frame_accessible_private)
    end

    def to_unsafe
      @gtk_frame_accessible_private.not_nil!
    end

  end
end

