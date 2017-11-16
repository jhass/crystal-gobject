module Gtk
  class ToolPalettePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToolPalettePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolPalettePrivate*)
    end

  end
end

