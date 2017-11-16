module Gtk
  class PanedPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PanedPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PanedPrivate*)
    end

  end
end

