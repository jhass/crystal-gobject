module Gio
  class SimpleProxyResolverPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SimpleProxyResolverPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleProxyResolverPrivate*)
    end

  end
end

