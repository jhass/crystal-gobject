module Gtk
  class OverlayPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::OverlayPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::OverlayPrivate*)
    end

  end
end

