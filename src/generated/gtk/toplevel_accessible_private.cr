module Gtk
  class ToplevelAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToplevelAccessiblePrivate*))
    end

    @gtk_toplevel_accessible_private : LibGtk::ToplevelAccessiblePrivate*?
    def initialize(@gtk_toplevel_accessible_private : LibGtk::ToplevelAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_toplevel_accessible_private.not_nil!
    end

  end
end

