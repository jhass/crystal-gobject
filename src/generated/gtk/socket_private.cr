module Gtk
  class SocketPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SocketPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SocketPrivate*)
    end

  end
end

