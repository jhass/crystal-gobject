module Gio
  class ResolverPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ResolverPrivate*))
    end

    @gio_resolver_private : LibGio::ResolverPrivate*?
    def initialize(@gio_resolver_private : LibGio::ResolverPrivate*)
    end

    def to_unsafe
      @gio_resolver_private.not_nil!
    end

  end
end

