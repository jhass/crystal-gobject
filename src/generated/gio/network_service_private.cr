module Gio
  class NetworkServicePrivate
    include GObject::WrappedType

    def initialize(@gio_network_service_private)
    end

    def to_unsafe
      @gio_network_service_private.not_nil!
    end

  end
end

