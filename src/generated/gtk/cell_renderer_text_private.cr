module Gtk
  class CellRendererTextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererTextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererTextPrivate*)
    end

  end
end

