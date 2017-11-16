module Gtk
  class ToolItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToolItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolItemPrivate*)
    end

  end
end

