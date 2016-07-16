module GIRepository
  class UnresolvedInfo
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGIRepository::UnresolvedInfo*))
    end

    @g_i_repository_unresolved_info : LibGIRepository::UnresolvedInfo*?
    def initialize(@g_i_repository_unresolved_info : LibGIRepository::UnresolvedInfo*)
    end

    def to_unsafe
      @g_i_repository_unresolved_info.not_nil!.as(Void*)
    end

  end
end

