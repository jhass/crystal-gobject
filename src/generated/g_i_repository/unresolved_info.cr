module GIRepository
  class UnresolvedInfo
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGIRepository::UnresolvedInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::UnresolvedInfo*)
    end

  end
end

