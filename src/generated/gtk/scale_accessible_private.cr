module Gtk
  class ScaleAccessiblePrivate
    include GObject::WrappedType

    @gtk_scale_accessible_private : LibGtk::ScaleAccessiblePrivate*?
    def initialize(@gtk_scale_accessible_private : LibGtk::ScaleAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_scale_accessible_private.not_nil!.as(Void*)
    end

  end
end

