module GIRepository
  class UnresolvedInfo
    include GObject::WrappedType

    def initialize(@g_i_repository_unresolved_info)
    end

    def to_unsafe
      @g_i_repository_unresolved_info.not_nil!
    end

  end
end

