module Gtk
  class ContainerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ContainerPrivate*))
    end

    @gtk_container_private : LibGtk::ContainerPrivate*?
    def initialize(@gtk_container_private : LibGtk::ContainerPrivate*)
    end

    def to_unsafe
      @gtk_container_private.not_nil!
    end

  end
end

