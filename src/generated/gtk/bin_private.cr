module Gtk
  class BinPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::BinPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::BinPrivate*)
    end

  end
end

