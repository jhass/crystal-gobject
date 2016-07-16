module GLib
  class MemVTable
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      super(ptr.as(LibGLib::MemVTable*))
    end

    @g_lib_mem_v_table : LibGLib::MemVTable*?
    def initialize(@g_lib_mem_v_table : LibGLib::MemVTable*)
    end

    def to_unsafe
      @g_lib_mem_v_table.not_nil!.as(Void*)
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

