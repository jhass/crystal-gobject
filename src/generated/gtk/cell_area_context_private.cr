module Gtk
  class CellAreaContextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellAreaContextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellAreaContextPrivate*)
    end

  end
end

