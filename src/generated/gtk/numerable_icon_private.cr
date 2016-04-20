module Gtk
  class NumerableIconPrivate
    include GObject::WrappedType

    @gtk_numerable_icon_private : LibGtk::NumerableIconPrivate*?
    def initialize(@gtk_numerable_icon_private : LibGtk::NumerableIconPrivate*)
    end

    def to_unsafe
      @gtk_numerable_icon_private.not_nil!
    end

  end
end

