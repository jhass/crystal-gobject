module Gtk
  class TreeModelFilterPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeModelFilterPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeModelFilterPrivate*)
    end

  end
end

