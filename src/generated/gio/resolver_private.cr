module Gio
  class ResolverPrivate
    include GObject::WrappedType

    def initialize(@gio_resolver_private)
    end

    def to_unsafe
      @gio_resolver_private.not_nil!
    end

  end
end

