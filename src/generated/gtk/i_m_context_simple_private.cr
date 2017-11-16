module Gtk
  class IMContextSimplePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IMContextSimplePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IMContextSimplePrivate*)
    end

  end
end

