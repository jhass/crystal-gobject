module GIRepository
  class UnresolvedInfo
    include GObject::WrappedType

    @g_i_repository_unresolved_info : LibGIRepository::UnresolvedInfo*?
    def initialize(@g_i_repository_unresolved_info : LibGIRepository::UnresolvedInfo*)
    end

    def to_unsafe
      @g_i_repository_unresolved_info.not_nil!
    end

  end
end

