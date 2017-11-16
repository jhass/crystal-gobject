module Gtk
  class ListStorePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ListStorePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListStorePrivate*)
    end

  end
end

