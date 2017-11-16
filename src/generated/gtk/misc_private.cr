module Gtk
  class MiscPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::MiscPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MiscPrivate*)
    end

  end
end

