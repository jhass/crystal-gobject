module Gtk
  class ArrowPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ArrowPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ArrowPrivate*)
    end

  end
end

