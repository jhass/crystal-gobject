module Gtk
  class IconViewAccessiblePrivate
    include GObject::WrappedType

    @gtk_icon_view_accessible_private : LibGtk::IconViewAccessiblePrivate*?
    def initialize(@gtk_icon_view_accessible_private : LibGtk::IconViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_icon_view_accessible_private.not_nil!
    end

  end
end

