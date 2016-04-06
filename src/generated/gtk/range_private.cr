module Gtk
  class RangePrivate
    include GObject::WrappedType

    def initialize(@gtk_range_private)
    end

    def to_unsafe
      @gtk_range_private.not_nil!
    end

  end
end

