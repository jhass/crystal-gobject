module Gtk
  class FixedPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FixedPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FixedPrivate*)
    end

  end
end

