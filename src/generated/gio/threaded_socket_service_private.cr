module Gio
  class ThreadedSocketServicePrivate
    include GObject::WrappedType

    def initialize(@gio_threaded_socket_service_private)
    end

    def to_unsafe
      @gio_threaded_socket_service_private.not_nil!
    end

  end
end

