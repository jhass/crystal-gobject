module Gtk
  class ToplevelAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_toplevel_accessible_private)
    end

    def to_unsafe
      @gtk_toplevel_accessible_private.not_nil!
    end

  end
end

