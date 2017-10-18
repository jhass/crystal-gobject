module Gio
  class SimpleProxyResolver < GObject::Object
    @gio_simple_proxy_resolver : LibGio::SimpleProxyResolver*?
    def initialize(@gio_simple_proxy_resolver : LibGio::SimpleProxyResolver*)
    end

    def to_unsafe
      @gio_simple_proxy_resolver.not_nil!
    end

    # Implements ProxyResolver
    def default_proxy
      __return_value = LibGio.simple_proxy_resolver_get_default_proxy(to_unsafe.as(LibGio::SimpleProxyResolver*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def ignore_hosts
      __return_value = LibGio.simple_proxy_resolver_get_ignore_hosts(to_unsafe.as(LibGio::SimpleProxyResolver*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def self.new(default_proxy, ignore_hosts)
      __return_value = LibGio.simple_proxy_resolver_new(default_proxy ? default_proxy.to_unsafe : nil, ignore_hosts ? ignore_hosts.to_unsafe : nil)
      __return_value
    end

    def default_proxy=(default_proxy)
      LibGio.simple_proxy_resolver_set_default_proxy(to_unsafe.as(LibGio::SimpleProxyResolver*), default_proxy.to_unsafe)
      nil
    end

    def ignore_hosts=(ignore_hosts)
      LibGio.simple_proxy_resolver_set_ignore_hosts(to_unsafe.as(LibGio::SimpleProxyResolver*), ignore_hosts.to_unsafe)
      nil
    end

    def set_uri_proxy(uri_scheme, proxy)
      LibGio.simple_proxy_resolver_set_uri_proxy(to_unsafe.as(LibGio::SimpleProxyResolver*), uri_scheme.to_unsafe, proxy.to_unsafe)
      nil
    end

  end
end

