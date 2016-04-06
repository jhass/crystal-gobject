module Gtk
  class IconViewAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_icon_view_accessible_private)
    end

    def to_unsafe
      @gtk_icon_view_accessible_private.not_nil!
    end

  end
end

