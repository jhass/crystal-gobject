module Gtk
  class SocketPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SocketPrivate*))
    end

    @gtk_socket_private : LibGtk::SocketPrivate*?
    def initialize(@gtk_socket_private : LibGtk::SocketPrivate*)
    end

    def to_unsafe
      @gtk_socket_private.not_nil!
    end

  end
end

