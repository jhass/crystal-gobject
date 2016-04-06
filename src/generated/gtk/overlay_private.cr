module Gtk
  class OverlayPrivate
    include GObject::WrappedType

    def initialize(@gtk_overlay_private)
    end

    def to_unsafe
      @gtk_overlay_private.not_nil!
    end

  end
end

