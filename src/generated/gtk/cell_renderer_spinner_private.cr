module Gtk
  class CellRendererSpinnerPrivate
    include GObject::WrappedType

    def initialize(@gtk_cell_renderer_spinner_private)
    end

    def to_unsafe
      @gtk_cell_renderer_spinner_private.not_nil!
    end

  end
end

