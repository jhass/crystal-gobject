module Gst
  class Memory
    include GObject::WrappedType

    def initialize(@gst_memory)
    end

    def to_unsafe
      @gst_memory.not_nil!
    end

    def self.new_wrapped(flags, data, maxsize, offset, size, user_data, notify : LibGLib::DestroyNotify?)
      __return_value = LibGst.memory_new_wrapped(flags, data, UInt64.new(maxsize), UInt64.new(offset), UInt64.new(size), user_data && user_data, notify && notify)
      Gst::Memory.new(__return_value)
    end

    def copy(offset, size)
      __return_value = LibGst.memory_copy((to_unsafe as LibGst::Memory*), Int64.new(offset), Int64.new(size))
      Gst::Memory.new(__return_value)
    end

    def sizes(offset, maxsize)
      __return_value = LibGst.memory_get_sizes((to_unsafe as LibGst::Memory*), offset, maxsize)
      __return_value
    end

    def span?(mem2, offset)
      __return_value = LibGst.memory_is_span((to_unsafe as LibGst::Memory*), (mem2.to_unsafe as LibGst::Memory*), offset)
      __return_value
    end

    def type?(mem_type)
      __return_value = LibGst.memory_is_type((to_unsafe as LibGst::Memory*), mem_type)
      __return_value
    end

    def make_mapped(info, flags)
      __return_value = LibGst.memory_make_mapped((to_unsafe as LibGst::Memory*), info, flags)
      Gst::Memory.new(__return_value) if __return_value
    end

    def map(info, flags)
      __return_value = LibGst.memory_map((to_unsafe as LibGst::Memory*), info, flags)
      __return_value
    end

    def resize(offset, size)
      __return_value = LibGst.memory_resize((to_unsafe as LibGst::Memory*), Int64.new(offset), UInt64.new(size))
      __return_value
    end

    def share(offset, size)
      __return_value = LibGst.memory_share((to_unsafe as LibGst::Memory*), Int64.new(offset), Int64.new(size))
      Gst::Memory.new(__return_value)
    end

    def unmap(info)
      __return_value = LibGst.memory_unmap((to_unsafe as LibGst::Memory*), (info.to_unsafe as LibGst::MapInfo*))
      __return_value
    end

  end
end

