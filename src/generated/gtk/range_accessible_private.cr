module Gtk
  class RangeAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_range_accessible_private)
    end

    def to_unsafe
      @gtk_range_accessible_private.not_nil!
    end

  end
end

