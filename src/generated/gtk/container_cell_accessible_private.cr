module Gtk
  class ContainerCellAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_container_cell_accessible_private)
    end

    def to_unsafe
      @gtk_container_cell_accessible_private.not_nil!
    end

  end
end

