module Gtk
  class AspectFramePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AspectFramePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AspectFramePrivate*)
    end

  end
end

