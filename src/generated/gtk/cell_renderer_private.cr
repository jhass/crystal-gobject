module Gtk
  class CellRendererPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererPrivate*)
    end

  end
end

