module Gtk
  class InvisiblePrivate
    include GObject::WrappedType

    @gtk_invisible_private : LibGtk::InvisiblePrivate*?
    def initialize(@gtk_invisible_private : LibGtk::InvisiblePrivate*)
    end

    def to_unsafe
      @gtk_invisible_private.not_nil!.as(Void*)
    end

  end
end

