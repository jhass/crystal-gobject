module GLib
  class MemVTable
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(48, 0)
      super(ptr.as(LibGLib::MemVTable*))
    end

    @g_lib_mem_v_table : LibGLib::MemVTable*?
    def initialize(@g_lib_mem_v_table : LibGLib::MemVTable*)
    end

    def to_unsafe
      @g_lib_mem_v_table.not_nil!
    end

    def malloc
      (to_unsafe.value.malloc)
    end

    def realloc
      (to_unsafe.value.realloc)
    end

    def free
      (to_unsafe.value.free)
    end

    def calloc
      (to_unsafe.value.calloc)
    end

    def try_malloc
      (to_unsafe.value.try_malloc)
    end

    def try_realloc
      (to_unsafe.value.try_realloc)
    end

  end
end

