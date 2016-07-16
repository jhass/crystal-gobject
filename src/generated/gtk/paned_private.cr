module Gtk
  class PanedPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::PanedPrivate*))
    end

    @gtk_paned_private : LibGtk::PanedPrivate*?
    def initialize(@gtk_paned_private : LibGtk::PanedPrivate*)
    end

    def to_unsafe
      @gtk_paned_private.not_nil!.as(Void*)
    end

  end
end

