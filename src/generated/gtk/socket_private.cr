module Gtk
  class SocketPrivate
    include GObject::WrappedType

    @gtk_socket_private : LibGtk::SocketPrivate*?
    def initialize(@gtk_socket_private : LibGtk::SocketPrivate*)
    end

    def to_unsafe
      @gtk_socket_private.not_nil!
    end

  end
end

