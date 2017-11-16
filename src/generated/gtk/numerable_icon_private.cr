module Gtk
  class NumerableIconPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::NumerableIconPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NumerableIconPrivate*)
    end

  end
end

