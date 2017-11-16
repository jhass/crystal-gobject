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
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "domain", gvalue)
      gvalue.string
    end

    def protocol
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "protocol", gvalue)
      gvalue.string
    end

    def scheme
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scheme", gvalue)
      gvalue.string
    end

    def service
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "service", gvalue)
      gvalue.string
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

