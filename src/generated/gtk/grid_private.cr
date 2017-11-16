module Gtk
  class GridPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::GridPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GridPrivate*)
    end

  end
end

