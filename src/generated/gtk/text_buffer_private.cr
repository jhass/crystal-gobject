module Gtk
  class TextBufferPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TextBufferPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextBufferPrivate*)
    end

  end
end

