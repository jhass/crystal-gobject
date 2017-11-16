module Gtk
  class ToolbarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToolbarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolbarPrivate*)
    end

  end
end

