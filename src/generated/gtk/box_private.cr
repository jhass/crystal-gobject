module Gtk
  class BoxPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::BoxPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::BoxPrivate*)
    end

  end
end

