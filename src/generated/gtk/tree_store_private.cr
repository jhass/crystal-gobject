module Gtk
  class TreeStorePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeStorePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeStorePrivate*)
    end

  end
end

