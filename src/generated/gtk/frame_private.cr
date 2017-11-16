module Gtk
  class FramePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FramePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FramePrivate*)
    end

  end
end

