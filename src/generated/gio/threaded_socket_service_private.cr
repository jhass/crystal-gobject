module Gio
  class ThreadedSocketServicePrivate
    include GObject::WrappedType

    @gio_threaded_socket_service_private : LibGio::ThreadedSocketServicePrivate*?
    def initialize(@gio_threaded_socket_service_private : LibGio::ThreadedSocketServicePrivate*)
    end

    def to_unsafe
      @gio_threaded_socket_service_private.not_nil!
    end

  end
end

