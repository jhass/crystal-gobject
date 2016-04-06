module Gtk
  class IconViewPrivate
    include GObject::WrappedType

    def initialize(@gtk_icon_view_private)
    end

    def to_unsafe
      @gtk_icon_view_private.not_nil!
    end

  end
end

