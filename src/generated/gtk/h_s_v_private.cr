module Gtk
  class HSVPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::HSVPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HSVPrivate*)
    end

  end
end

