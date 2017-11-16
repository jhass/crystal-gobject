module Gtk
  class TablePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TablePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TablePrivate*)
    end

  end
end

