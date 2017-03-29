module Gtk
  class ContainerCellAccessiblePrivate
    include GObject::WrappedType

    @gtk_container_cell_accessible_private : LibGtk::ContainerCellAccessiblePrivate*?
    def initialize(@gtk_container_cell_accessible_private : LibGtk::ContainerCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_container_cell_accessible_private.not_nil!
    end

  end
end

