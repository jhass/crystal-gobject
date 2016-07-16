module Gtk
  class LayoutPrivate
    include GObject::WrappedType

    @gtk_layout_private : LibGtk::LayoutPrivate*?
    def initialize(@gtk_layout_private : LibGtk::LayoutPrivate*)
    end

    def to_unsafe
      @gtk_layout_private.not_nil!.as(Void*)
    end

  end
end

