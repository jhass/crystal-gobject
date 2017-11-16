module Gtk
  class IconFactoryPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IconFactoryPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconFactoryPrivate*)
    end

  end
end

