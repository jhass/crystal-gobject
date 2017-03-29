module Gtk
  class RangePrivate
    include GObject::WrappedType

    @gtk_range_private : LibGtk::RangePrivate*?
    def initialize(@gtk_range_private : LibGtk::RangePrivate*)
    end

    def to_unsafe
      @gtk_range_private.not_nil!
    end

  end
end

