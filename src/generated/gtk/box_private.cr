module Gtk
  class BoxPrivate
    include GObject::WrappedType

    @gtk_box_private : LibGtk::BoxPrivate*?
    def initialize(@gtk_box_private : LibGtk::BoxPrivate*)
    end

    def to_unsafe
      @gtk_box_private.not_nil!.as(Void*)
    end

  end
end

