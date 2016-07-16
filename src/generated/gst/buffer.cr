module Gst
  class Buffer
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil, pool : Gst::BufferPool|Nil = nil, pts : UInt64|Nil = nil, dts : UInt64|Nil = nil, duration : UInt64|Nil = nil, offset : UInt64|Nil = nil, offset_end : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(112, 0u8)
      new(ptr.as(LibGst::Buffer*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
        object.pool = pool unless pool.nil?
        object.pts = pts unless pts.nil?
        object.dts = dts unless dts.nil?
        object.duration = duration unless duration.nil?
        object.offset = offset unless offset.nil?
        object.offset_end = offset_end unless offset_end.nil?
      end
    end

    @gst_buffer : LibGst::Buffer*?
    def initialize(@gst_buffer : LibGst::Buffer*)
    end

    def to_unsafe
      @gst_buffer.not_nil!
    end

    def self.new : self
      __return_value = LibGst.buffer_new
      cast Gst::Buffer.new(__return_value)
    end

    def self.new_allocate(allocator, size, params) : self
      __return_value = LibGst.buffer_new_allocate(allocator && allocator.to_unsafe.as(LibGst::Allocator*), UInt64.new(size), params && params.to_unsafe.as(LibGst::AllocationParams*))
      cast Gst::Buffer.new(__return_value) if __return_value
    end

    def self.new_wrapped(data, size) : self
      __return_value = LibGst.buffer_new_wrapped(data, UInt64.new(size))
      cast Gst::Buffer.new(__return_value)
    end

    def self.new_wrapped_full(flags, data, maxsize, offset, size, user_data, notify : LibGLib::DestroyNotify?) : self
      __return_value = LibGst.buffer_new_wrapped_full(flags, data, UInt64.new(maxsize), UInt64.new(offset), UInt64.new(size), user_data && user_data, notify && notify)
      cast Gst::Buffer.new(__return_value)
    end

    def add_meta(info, params)
      __return_value = LibGst.buffer_add_meta(to_unsafe.as(LibGst::Buffer*), info.to_unsafe.as(LibGst::MetaInfo*), params && params)
      Gst::Meta.new(__return_value)
    end

    def add_parent_buffer_meta(ref)
      __return_value = LibGst.buffer_add_parent_buffer_meta(to_unsafe.as(LibGst::Buffer*), ref.to_unsafe.as(LibGst::Buffer*))
      Gst::ParentBufferMeta.new(__return_value)
    end

    def add_protection_meta(info)
      __return_value = LibGst.buffer_add_protection_meta(to_unsafe.as(LibGst::Buffer*), info.to_unsafe.as(LibGst::Structure*))
      Gst::ProtectionMeta.new(__return_value)
    end

    def append(buf2)
      __return_value = LibGst.buffer_append(to_unsafe.as(LibGst::Buffer*), buf2.to_unsafe.as(LibGst::Buffer*))
      Gst::Buffer.new(__return_value)
    end

    def append_memory(mem)
      __return_value = LibGst.buffer_append_memory(to_unsafe.as(LibGst::Buffer*), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def append_region(buf2, offset, size)
      __return_value = LibGst.buffer_append_region(to_unsafe.as(LibGst::Buffer*), buf2.to_unsafe.as(LibGst::Buffer*), Int64.new(offset), Int64.new(size))
      Gst::Buffer.new(__return_value)
    end

    def copy_deep
      __return_value = LibGst.buffer_copy_deep(to_unsafe.as(LibGst::Buffer*))
      Gst::Buffer.new(__return_value)
    end

    def copy_into(src, flags, offset, size)
      __return_value = LibGst.buffer_copy_into(to_unsafe.as(LibGst::Buffer*), src.to_unsafe.as(LibGst::Buffer*), flags, UInt64.new(offset), UInt64.new(size))
      __return_value
    end

    def copy_region(flags, offset, size)
      __return_value = LibGst.buffer_copy_region(to_unsafe.as(LibGst::Buffer*), flags, UInt64.new(offset), UInt64.new(size))
      Gst::Buffer.new(__return_value)
    end

    def extract(offset, dest, size)
      __return_value = LibGst.buffer_extract(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), dest && dest, UInt64.new(size))
      __return_value
    end

    def extract_dup(offset, size, dest, dest_size)
      __return_value = LibGst.buffer_extract_dup(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), UInt64.new(size), dest, UInt64.new(dest_size))
      __return_value
    end

    def fill(offset, src, size)
      __return_value = LibGst.buffer_fill(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), src, UInt64.new(size))
      __return_value
    end

    def find_memory(offset, size, idx, length, skip)
      __return_value = LibGst.buffer_find_memory(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), UInt64.new(size), UInt32.new(idx), UInt32.new(length), UInt64.new(skip))
      __return_value
    end

    def foreach_meta(func : LibGst::BufferForeachMetaFunc, user_data)
      __return_value = LibGst.buffer_foreach_meta(to_unsafe.as(LibGst::Buffer*), func, user_data && user_data)
      __return_value
    end

    def all_memory
      __return_value = LibGst.buffer_get_all_memory(to_unsafe.as(LibGst::Buffer*))
      Gst::Memory.new(__return_value)
    end

    def memory(idx)
      __return_value = LibGst.buffer_get_memory(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx))
      Gst::Memory.new(__return_value)
    end

    def memory_range(idx, length)
      __return_value = LibGst.buffer_get_memory_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length))
      Gst::Memory.new(__return_value)
    end

    def meta(api)
      __return_value = LibGst.buffer_get_meta(to_unsafe.as(LibGst::Buffer*), UInt64.new(api))
      Gst::Meta.new(__return_value) if __return_value
    end

    def size
      __return_value = LibGst.buffer_get_size(to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def sizes(offset, maxsize)
      __return_value = LibGst.buffer_get_sizes(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), UInt64.new(maxsize))
      __return_value
    end

    def sizes_range(idx, length, offset, maxsize)
      __return_value = LibGst.buffer_get_sizes_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length), UInt64.new(offset), UInt64.new(maxsize))
      __return_value
    end

    def insert_memory(idx, mem)
      __return_value = LibGst.buffer_insert_memory(to_unsafe.as(LibGst::Buffer*), Int32.new(idx), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def all_memory_writable?
      __return_value = LibGst.buffer_is_all_memory_writable(to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def memory_range_writable?(idx, length)
      __return_value = LibGst.buffer_is_memory_range_writable(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length))
      __return_value
    end

    def iterate_meta(state)
      __return_value = LibGst.buffer_iterate_meta(to_unsafe.as(LibGst::Buffer*), state && state)
      Gst::Meta.new(__return_value) if __return_value
    end

    def map(info, flags)
      __return_value = LibGst.buffer_map(to_unsafe.as(LibGst::Buffer*), info, flags)
      __return_value
    end

    def map_range(idx, length, info, flags)
      __return_value = LibGst.buffer_map_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length), info, flags)
      __return_value
    end

    def memcmp(offset, mem, size)
      __return_value = LibGst.buffer_memcmp(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), mem, UInt64.new(size))
      __return_value
    end

    def memset(offset, val, size)
      __return_value = LibGst.buffer_memset(to_unsafe.as(LibGst::Buffer*), UInt64.new(offset), UInt8.new(val), UInt64.new(size))
      __return_value
    end

    def n_memory
      __return_value = LibGst.buffer_n_memory(to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def peek_memory(idx)
      __return_value = LibGst.buffer_peek_memory(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx))
      Gst::Memory.new(__return_value)
    end

    def prepend_memory(mem)
      __return_value = LibGst.buffer_prepend_memory(to_unsafe.as(LibGst::Buffer*), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def remove_all_memory
      __return_value = LibGst.buffer_remove_all_memory(to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def remove_memory(idx)
      __return_value = LibGst.buffer_remove_memory(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx))
      __return_value
    end

    def remove_memory_range(idx, length)
      __return_value = LibGst.buffer_remove_memory_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length))
      __return_value
    end

    def remove_meta(meta)
      __return_value = LibGst.buffer_remove_meta(to_unsafe.as(LibGst::Buffer*), meta.to_unsafe.as(LibGst::Meta*))
      __return_value
    end

    def replace_all_memory(mem)
      __return_value = LibGst.buffer_replace_all_memory(to_unsafe.as(LibGst::Buffer*), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def replace_memory(idx, mem)
      __return_value = LibGst.buffer_replace_memory(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def replace_memory_range(idx, length, mem)
      __return_value = LibGst.buffer_replace_memory_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length), mem.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def resize(offset, size)
      __return_value = LibGst.buffer_resize(to_unsafe.as(LibGst::Buffer*), Int64.new(offset), Int64.new(size))
      __return_value
    end

    def resize_range(idx, length, offset, size)
      __return_value = LibGst.buffer_resize_range(to_unsafe.as(LibGst::Buffer*), UInt32.new(idx), Int32.new(length), Int64.new(offset), Int64.new(size))
      __return_value
    end

    def size=(size)
      __return_value = LibGst.buffer_set_size(to_unsafe.as(LibGst::Buffer*), Int64.new(size))
      __return_value
    end

    def unmap(info)
      __return_value = LibGst.buffer_unmap(to_unsafe.as(LibGst::Buffer*), info.to_unsafe.as(LibGst::MapInfo*))
      __return_value
    end

    def self.max_memory
      __return_value = LibGst.buffer_get_max_memory
      __return_value
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.value.mini_object = value
    end

    def pool
      Gst::BufferPool.new((to_unsafe.value.pool))
    end

    def pool=(value : Gst::BufferPool)
      to_unsafe.value.pool = value.to_unsafe.as(LibGst::BufferPool*)
    end

    def pts
      (to_unsafe.value.pts)
    end

    def pts=(value : UInt64)
      to_unsafe.value.pts = UInt64.new(value)
    end

    def dts
      (to_unsafe.value.dts)
    end

    def dts=(value : UInt64)
      to_unsafe.value.dts = UInt64.new(value)
    end

    def duration
      (to_unsafe.value.duration)
    end

    def duration=(value : UInt64)
      to_unsafe.value.duration = UInt64.new(value)
    end

    def offset
      (to_unsafe.value.offset)
    end

    def offset=(value : UInt64)
      to_unsafe.value.offset = UInt64.new(value)
    end

    def offset_end
      (to_unsafe.value.offset_end)
    end

    def offset_end=(value : UInt64)
      to_unsafe.value.offset_end = UInt64.new(value)
    end

  end
end

