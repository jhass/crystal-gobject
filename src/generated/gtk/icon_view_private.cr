module Gtk
  class IconViewPrivate
    include GObject::WrappedType

    @gtk_icon_view_private : LibGtk::IconViewPrivate*?
    def initialize(@gtk_icon_view_private : LibGtk::IconViewPrivate*)
    end

    def to_unsafe
      @gtk_icon_view_private.not_nil!.as(Void*)
    end

  end
end

