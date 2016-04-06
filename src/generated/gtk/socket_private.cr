module Gtk
  class SocketPrivate
    include GObject::WrappedType

    def initialize(@gtk_socket_private)
    end

    def to_unsafe
      @gtk_socket_private.not_nil!
    end

  end
end

