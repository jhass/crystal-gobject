module Gio
  class SimpleProxyResolver < GObject::Object
    def initialize(@gio_simple_proxy_resolver)
    end

    def to_unsafe
      @gio_simple_proxy_resolver.not_nil!
    end

    # Implements ProxyResolver


    def self.new_internal(default_proxy, ignore_hosts)
      __return_value = LibGio.simple_proxy_resolver_new(default_proxy && default_proxy, ignore_hosts && ignore_hosts)
      __return_value
    end

    def default_proxy=(default_proxy)
      __return_value = LibGio.simple_proxy_resolver_set_default_proxy((to_unsafe as LibGio::SimpleProxyResolver*), default_proxy)
      __return_value
    end

    def ignore_hosts=(ignore_hosts)
      __return_value = LibGio.simple_proxy_resolver_set_ignore_hosts((to_unsafe as LibGio::SimpleProxyResolver*), ignore_hosts)
      __return_value
    end

    def set_uri_proxy(uri_scheme, proxy)
      __return_value = LibGio.simple_proxy_resolver_set_uri_proxy((to_unsafe as LibGio::SimpleProxyResolver*), uri_scheme, proxy)
      __return_value
    end

  end
end

