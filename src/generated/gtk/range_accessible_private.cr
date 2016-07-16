module Gtk
  class RangeAccessiblePrivate
    include GObject::WrappedType

    @gtk_range_accessible_private : LibGtk::RangeAccessiblePrivate*?
    def initialize(@gtk_range_accessible_private : LibGtk::RangeAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_range_accessible_private.not_nil!.as(Void*)
    end

  end
end

