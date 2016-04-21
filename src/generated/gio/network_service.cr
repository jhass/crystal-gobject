module Gio
  class NetworkService < GObject::Object
    @gio_network_service : LibGio::NetworkService*?
    def initialize(@gio_network_service : LibGio::NetworkService*)
    end

    def to_unsafe
      @gio_network_service.not_nil!
    end

    # Implements SocketConnectable




    def self.new(service, protocol, domain) : self
      __return_value = LibGio.network_service_new(service, protocol, domain)
      cast Gio::NetworkService.new(__return_value)
    end

    def domain
      __return_value = LibGio.network_service_get_domain((to_unsafe as LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def protocol
      __return_value = LibGio.network_service_get_protocol((to_unsafe as LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scheme
      __return_value = LibGio.network_service_get_scheme((to_unsafe as LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def service
      __return_value = LibGio.network_service_get_service((to_unsafe as LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scheme=(scheme)
      __return_value = LibGio.network_service_set_scheme((to_unsafe as LibGio::NetworkService*), scheme)
      __return_value
    end

  end
end

