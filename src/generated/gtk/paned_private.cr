module Gtk
  class PanedPrivate
    include GObject::WrappedType

    @gtk_paned_private : LibGtk::PanedPrivate*?
    def initialize(@gtk_paned_private : LibGtk::PanedPrivate*)
    end

    def to_unsafe
      @gtk_paned_private.not_nil!
    end

  end
end

