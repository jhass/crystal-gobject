module GIRepository
  class RepositoryPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGIRepository::RepositoryPrivate*))
    end

    @g_i_repository_repository_private : LibGIRepository::RepositoryPrivate*?
    def initialize(@g_i_repository_repository_private : LibGIRepository::RepositoryPrivate*)
    end

    def to_unsafe
      @g_i_repository_repository_private.not_nil!
    end

  end
end

