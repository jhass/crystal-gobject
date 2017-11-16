module Gio
  class ResolverPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ResolverPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ResolverPrivate*)
    end

  end
end

