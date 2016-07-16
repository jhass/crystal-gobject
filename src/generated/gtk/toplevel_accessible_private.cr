module Gtk
  class ToplevelAccessiblePrivate
    include GObject::WrappedType

    @gtk_toplevel_accessible_private : LibGtk::ToplevelAccessiblePrivate*?
    def initialize(@gtk_toplevel_accessible_private : LibGtk::ToplevelAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_toplevel_accessible_private.not_nil!.as(Void*)
    end

  end
end

