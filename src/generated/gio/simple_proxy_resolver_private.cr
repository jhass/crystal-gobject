module Gio
  class SimpleProxyResolverPrivate
    include GObject::WrappedType

    def initialize(@gio_simple_proxy_resolver_private)
    end

    def to_unsafe
      @gio_simple_proxy_resolver_private.not_nil!
    end

  end
end

