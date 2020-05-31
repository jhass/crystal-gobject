module GIRepository
  class RepositoryClass
    include GObject::WrappedType

    def self.new : self
      new(Pointer(UInt8).malloc(136u64, 0u8).as(LibGIRepository::RepositoryClass*))
    end

    @pointer : Void*

    def initialize(pointer : LibGIRepository::RepositoryClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::RepositoryClass*)
    end

    def to_unsafe_repositoryclass
      @pointer.not_nil!.as(LibGIRepository::RepositoryClass*)
    end

    def parent
      GObject::ObjectClass.new(to_unsafe.as(LibGIRepository::RepositoryClass*).value.parent)
    end
  end
end
