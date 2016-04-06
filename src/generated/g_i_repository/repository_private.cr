module GIRepository
  class RepositoryPrivate
    include GObject::WrappedType

    def initialize(@g_i_repository_repository_private)
    end

    def to_unsafe
      @g_i_repository_repository_private.not_nil!
    end

  end
end

