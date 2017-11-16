module Gtk
  class ContainerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ContainerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ContainerPrivate*)
    end

  end
end

