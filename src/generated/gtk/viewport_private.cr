module Gtk
  class ViewportPrivate
    include GObject::WrappedType

    @gtk_viewport_private : LibGtk::ViewportPrivate*?
    def initialize(@gtk_viewport_private : LibGtk::ViewportPrivate*)
    end

    def to_unsafe
      @gtk_viewport_private.not_nil!
    end

  end
end

