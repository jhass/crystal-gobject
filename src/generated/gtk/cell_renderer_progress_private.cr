module Gtk
  class CellRendererProgressPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererProgressPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererProgressPrivate*)
    end

  end
end

