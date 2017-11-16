module Gtk
  class ToolItemGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToolItemGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolItemGroupPrivate*)
    end

  end
end

