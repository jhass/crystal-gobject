module Gtk
  class OverlayPrivate
    include GObject::WrappedType

    @gtk_overlay_private : LibGtk::OverlayPrivate*?
    def initialize(@gtk_overlay_private : LibGtk::OverlayPrivate*)
    end

    def to_unsafe
      @gtk_overlay_private.not_nil!.as(Void*)
    end

  end
end

