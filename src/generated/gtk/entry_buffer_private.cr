module Gtk
  class EntryBufferPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::EntryBufferPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryBufferPrivate*)
    end

  end
end

