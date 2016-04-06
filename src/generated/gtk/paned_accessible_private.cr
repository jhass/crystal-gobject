module Gtk
  class PanedAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_paned_accessible_private)
    end

    def to_unsafe
      @gtk_paned_accessible_private.not_nil!
    end

  end
end

