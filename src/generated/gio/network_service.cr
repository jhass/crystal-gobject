module Gio
  class NetworkService < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::NetworkService*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NetworkService*)
    end

    # Implements SocketConnectable
    def domain
      __return_value = LibGio.network_service_get_domain(to_unsafe.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def protocol
      __return_value = LibGio.network_service_get_protocol(to_unsafe.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scheme
      __return_value = LibGio.network_service_get_scheme(to_unsafe.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def service
      __return_value = LibGio.network_service_get_service(to_unsafe.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(service, protocol, domain) : self
      __return_value = LibGio.network_service_new(service.to_unsafe, protocol.to_unsafe, domain.to_unsafe)
      cast Gio::NetworkService.new(__return_value)
    end

    def domain
      __return_value = LibGio.network_service_get_domain(@pointer.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def protocol
      __return_value = LibGio.network_service_get_protocol(@pointer.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scheme
      __return_value = LibGio.network_service_get_scheme(@pointer.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def service
      __return_value = LibGio.network_service_get_service(@pointer.as(LibGio::NetworkService*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def scheme=(scheme)
      LibGio.network_service_set_scheme(@pointer.as(LibGio::NetworkService*), scheme.to_unsafe)
      nil
    end

  end
end

