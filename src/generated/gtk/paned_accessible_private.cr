module Gtk
  class PanedAccessiblePrivate
    include GObject::WrappedType

    @gtk_paned_accessible_private : LibGtk::PanedAccessiblePrivate*?
    def initialize(@gtk_paned_accessible_private : LibGtk::PanedAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_paned_accessible_private.not_nil!.as(Void*)
    end

  end
end

