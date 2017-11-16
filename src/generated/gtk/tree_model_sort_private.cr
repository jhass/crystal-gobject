module Gtk
  class TreeModelSortPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeModelSortPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeModelSortPrivate*)
    end

  end
end

