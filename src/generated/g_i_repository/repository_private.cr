module GIRepository
  class RepositoryPrivate
    include GObject::WrappedType

    @g_i_repository_repository_private : LibGIRepository::RepositoryPrivate*?
    def initialize(@g_i_repository_repository_private : LibGIRepository::RepositoryPrivate*)
    end

    def to_unsafe
      @g_i_repository_repository_private.not_nil!.as(Void*)
    end

  end
end

