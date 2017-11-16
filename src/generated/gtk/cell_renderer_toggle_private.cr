module Gtk
  class CellRendererTogglePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererTogglePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererTogglePrivate*)
    end

  end
end

