module Gtk
  class CellRendererSpinnerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CellRendererSpinnerPrivate*))
    end

    @gtk_cell_renderer_spinner_private : LibGtk::CellRendererSpinnerPrivate*?
    def initialize(@gtk_cell_renderer_spinner_private : LibGtk::CellRendererSpinnerPrivate*)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner_private.not_nil!
    end

  end
end

