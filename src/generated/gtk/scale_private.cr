module Gtk
  class ScalePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ScalePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScalePrivate*)
    end

  end
end

