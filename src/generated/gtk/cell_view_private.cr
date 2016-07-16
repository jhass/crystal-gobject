module Gtk
  class CellViewPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellViewPrivate*))
    end

    @gtk_cell_view_private : LibGtk::CellViewPrivate*?
    def initialize(@gtk_cell_view_private : LibGtk::CellViewPrivate*)
    end

    def to_unsafe
      @gtk_cell_view_private.not_nil!.as(Void*)
    end

  end
end

