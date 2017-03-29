module Gtk
  class GridPrivate
    include GObject::WrappedType

    @gtk_grid_private : LibGtk::GridPrivate*?
    def initialize(@gtk_grid_private : LibGtk::GridPrivate*)
    end

    def to_unsafe
      @gtk_grid_private.not_nil!
    end

  end
end

