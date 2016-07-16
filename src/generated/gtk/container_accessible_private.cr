module Gtk
  class ContainerAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ContainerAccessiblePrivate*))
    end

    @gtk_container_accessible_private : LibGtk::ContainerAccessiblePrivate*?
    def initialize(@gtk_container_accessible_private : LibGtk::ContainerAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_container_accessible_private.not_nil!.as(Void*)
    end

  end
end

