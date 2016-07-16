module Gtk
  class GridPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::GridPrivate*))
    end

    @gtk_grid_private : LibGtk::GridPrivate*?
    def initialize(@gtk_grid_private : LibGtk::GridPrivate*)
    end

    def to_unsafe
      @gtk_grid_private.not_nil!.as(Void*)
    end

  end
end

