module GIRepository
  class RepositoryPrivate
    include GObject::WrappedType

    @pointer : Void*

    def initialize(pointer : LibGIRepository::RepositoryPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::RepositoryPrivate*)
    end

    def to_unsafe_girepository_repositoryprivate
      @pointer.not_nil!.as(LibGIRepository::RepositoryPrivate*)
    end
  end
end
