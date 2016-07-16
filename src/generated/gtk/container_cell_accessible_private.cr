module Gtk
  class ContainerCellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ContainerCellAccessiblePrivate*))
    end

    @gtk_container_cell_accessible_private : LibGtk::ContainerCellAccessiblePrivate*?
    def initialize(@gtk_container_cell_accessible_private : LibGtk::ContainerCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_container_cell_accessible_private.not_nil!
    end

  end
end

