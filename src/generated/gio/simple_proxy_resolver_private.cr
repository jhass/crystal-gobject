module Gio
  class SimpleProxyResolverPrivate
    include GObject::WrappedType

    @gio_simple_proxy_resolver_private : LibGio::SimpleProxyResolverPrivate*?
    def initialize(@gio_simple_proxy_resolver_private : LibGio::SimpleProxyResolverPrivate*)
    end

    def to_unsafe
      @gio_simple_proxy_resolver_private.not_nil!
    end

  end
end

