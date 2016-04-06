module Gtk
  class NumerableIconPrivate
    include GObject::WrappedType

    def initialize(@gtk_numerable_icon_private)
    end

    def to_unsafe
      @gtk_numerable_icon_private.not_nil!
    end

  end
end

