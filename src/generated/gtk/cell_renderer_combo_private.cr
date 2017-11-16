module Gtk
  class CellRendererComboPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererComboPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererComboPrivate*)
    end

  end
end

