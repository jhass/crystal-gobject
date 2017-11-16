module Gtk
  class MenuShellPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::MenuShellPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuShellPrivate*)
    end

  end
end

