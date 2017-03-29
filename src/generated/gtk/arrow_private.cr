module Gtk
  class ArrowPrivate
    include GObject::WrappedType

    @gtk_arrow_private : LibGtk::ArrowPrivate*?
    def initialize(@gtk_arrow_private : LibGtk::ArrowPrivate*)
    end

    def to_unsafe
      @gtk_arrow_private.not_nil!
    end

  end
end

