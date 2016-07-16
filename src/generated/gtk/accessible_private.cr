module Gtk
  class AccessiblePrivate
    include GObject::WrappedType

    @gtk_accessible_private : LibGtk::AccessiblePrivate*?
    def initialize(@gtk_accessible_private : LibGtk::AccessiblePrivate*)
    end

    def to_unsafe
      @gtk_accessible_private.not_nil!.as(Void*)
    end

  end
end

