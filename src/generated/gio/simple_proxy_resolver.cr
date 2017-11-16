module Gio
  class SimpleProxyResolver < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SimpleProxyResolver*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleProxyResolver*)
    end

    # Implements ProxyResolver
    def default_proxy
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "default_proxy", gvalue)
      gvalue.string
    end

    def ignore_hosts
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ignore_hosts", gvalue)
      gvalue
    end

    def self.new(default_proxy, ignore_hosts)
      __return_value = LibGio.simple_proxy_resolver_new(default_proxy ? default_proxy.to_unsafe : nil, ignore_hosts ? ignore_hosts.to_unsafe : nil)
      __return_value
    end

    def default_proxy=(default_proxy)
      LibGio.simple_proxy_resolver_set_default_proxy(@pointer.as(LibGio::SimpleProxyResolver*), default_proxy.to_unsafe)
      nil
    end

    def ignore_hosts=(ignore_hosts)
      LibGio.simple_proxy_resolver_set_ignore_hosts(@pointer.as(LibGio::SimpleProxyResolver*), ignore_hosts.to_unsafe)
      nil
    end

    def set_uri_proxy(uri_scheme, proxy)
      LibGio.simple_proxy_resolver_set_uri_proxy(@pointer.as(LibGio::SimpleProxyResolver*), uri_scheme.to_unsafe, proxy.to_unsafe)
      nil
    end

  end
end

