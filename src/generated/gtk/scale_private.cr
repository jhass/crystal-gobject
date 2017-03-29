module Gtk
  class ScalePrivate
    include GObject::WrappedType

    @gtk_scale_private : LibGtk::ScalePrivate*?
    def initialize(@gtk_scale_private : LibGtk::ScalePrivate*)
    end

    def to_unsafe
      @gtk_scale_private.not_nil!
    end

  end
end

