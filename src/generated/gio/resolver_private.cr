module Gio
  class ResolverPrivate
    include GObject::WrappedType

    @gio_resolver_private : LibGio::ResolverPrivate*?
    def initialize(@gio_resolver_private : LibGio::ResolverPrivate*)
    end

    def to_unsafe
      @gio_resolver_private.not_nil!
    end

  end
end

