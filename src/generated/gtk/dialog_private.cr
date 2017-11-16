module Gtk
  class DialogPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::DialogPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::DialogPrivate*)
    end

  end
end

