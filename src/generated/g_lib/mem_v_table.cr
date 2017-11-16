module GLib
  class MemVTable
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      super(ptr.as(LibGLib::MemVTable*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::MemVTable*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MemVTable*)
    end

    def malloc
      (to_unsafe.as(LibGLib::MemVTable*).value.malloc)
    end

    def realloc
      (to_unsafe.as(LibGLib::MemVTable*).value.realloc)
    end

    def free
      (to_unsafe.as(LibGLib::MemVTable*).value.free)
    end

    def calloc
      (to_unsafe.as(LibGLib::MemVTable*).value.calloc)
    end

    def try_malloc
      (to_unsafe.as(LibGLib::MemVTable*).value.try_malloc)
    end

    def try_realloc
      (to_unsafe.as(LibGLib::MemVTable*).value.try_realloc)
    end

  end
end

