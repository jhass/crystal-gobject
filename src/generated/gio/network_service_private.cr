module Gio
  class NetworkServicePrivate
    include GObject::WrappedType

    @gio_network_service_private : LibGio::NetworkServicePrivate*?
    def initialize(@gio_network_service_private : LibGio::NetworkServicePrivate*)
    end

    def to_unsafe
      @gio_network_service_private.not_nil!.as(Void*)
    end

  end
end

