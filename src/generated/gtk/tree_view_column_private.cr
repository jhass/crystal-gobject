module Gtk
  class TreeViewColumnPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeViewColumnPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeViewColumnPrivate*)
    end

  end
end

