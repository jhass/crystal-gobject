module Gtk
  class RangePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RangePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RangePrivate*)
    end

  end
end

