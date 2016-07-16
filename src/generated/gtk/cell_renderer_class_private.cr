module Gtk
  class CellRendererClassPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererClassPrivate*))
    end

    @gtk_cell_renderer_class_private : LibGtk::CellRendererClassPrivate*?
    def initialize(@gtk_cell_renderer_class_private : LibGtk::CellRendererClassPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_class_private.not_nil!.as(Void*)
    end

  end
end

