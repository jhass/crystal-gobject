module Gtk
  class GridPrivate
    include GObject::WrappedType

    def initialize(@gtk_grid_private)
    end

    def to_unsafe
      @gtk_grid_private.not_nil!
    end

  end
end

