module Gst
  class Memory
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil, allocator : Gst::Allocator|Nil = nil, parent : Gst::Memory|Nil = nil, maxsize : UInt64|Nil = nil, align : UInt64|Nil = nil, offset : UInt64|Nil = nil, size : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(112, 0u8)
      new(ptr.as(LibGst::Memory*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
        object.allocator = allocator unless allocator.nil?
        object.parent = parent unless parent.nil?
        object.maxsize = maxsize unless maxsize.nil?
        object.align = align unless align.nil?
        object.offset = offset unless offset.nil?
        object.size = size unless size.nil?
      end
    end

    @gst_memory : LibGst::Memory*?
    def initialize(@gst_memory : LibGst::Memory*)
    end

    def to_unsafe
      @gst_memory.not_nil!.as(Void*)
    end

    def self.new_wrapped(flags, data, maxsize, offset, size, user_data, notify : LibGLib::DestroyNotify?) : self
      __return_value = LibGst.memory_new_wrapped(flags, data, UInt64.new(maxsize), UInt64.new(offset), UInt64.new(size), user_data && user_data, notify && notify)
      cast Gst::Memory.new(__return_value)
    end

    def copy(offset, size)
      __return_value = LibGst.memory_copy(to_unsafe.as(LibGst::Memory*), Int64.new(offset), Int64.new(size))
      Gst::Memory.new(__return_value)
    end

    def sizes(offset, maxsize)
      __return_value = LibGst.memory_get_sizes(to_unsafe.as(LibGst::Memory*), offset, maxsize)
      __return_value
    end

    def span?(mem2, offset)
      __return_value = LibGst.memory_is_span(to_unsafe.as(LibGst::Memory*), mem2.to_unsafe.as(LibGst::Memory*), offset)
      __return_value
    end

    def type?(mem_type)
      __return_value = LibGst.memory_is_type(to_unsafe.as(LibGst::Memory*), mem_type.to_unsafe)
      __return_value
    end

    def make_mapped(info, flags)
      __return_value = LibGst.memory_make_mapped(to_unsafe.as(LibGst::Memory*), info, flags)
      Gst::Memory.new(__return_value) if __return_value
    end

    def map(info, flags)
      __return_value = LibGst.memory_map(to_unsafe.as(LibGst::Memory*), info, flags)
      __return_value
    end

    def resize(offset, size)
      __return_value = LibGst.memory_resize(to_unsafe.as(LibGst::Memory*), Int64.new(offset), UInt64.new(size))
      __return_value
    end

    def share(offset, size)
      __return_value = LibGst.memory_share(to_unsafe.as(LibGst::Memory*), Int64.new(offset), Int64.new(size))
      Gst::Memory.new(__return_value)
    end

    def unmap(info)
      __return_value = LibGst.memory_unmap(to_unsafe.as(LibGst::Memory*), info.to_unsafe.as(LibGst::MapInfo*))
      __return_value
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::Memory*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Memory*).value.mini_object = value
    end

    def allocator
      Gst::Allocator.new((to_unsafe.as(LibGst::Memory*).value.allocator))
    end

    def allocator=(value : Gst::Allocator)
      to_unsafe.as(LibGst::Memory*).value.allocator = value.to_unsafe.as(LibGst::Allocator*)
    end

    def parent
      Gst::Memory.new((to_unsafe.as(LibGst::Memory*).value.parent))
    end

    def parent=(value : Gst::Memory)
      to_unsafe.as(LibGst::Memory*).value.parent = value.to_unsafe.as(LibGst::Memory*)
    end

    def maxsize
      (to_unsafe.as(LibGst::Memory*).value.maxsize)
    end

    def maxsize=(value : UInt64)
      to_unsafe.as(LibGst::Memory*).value.maxsize = UInt64.new(value)
    end

    def align
      (to_unsafe.as(LibGst::Memory*).value.align)
    end

    def align=(value : UInt64)
      to_unsafe.as(LibGst::Memory*).value.align = UInt64.new(value)
    end

    def offset
      (to_unsafe.as(LibGst::Memory*).value.offset)
    end

    def offset=(value : UInt64)
      to_unsafe.as(LibGst::Memory*).value.offset = UInt64.new(value)
    end

    def size
      (to_unsafe.as(LibGst::Memory*).value.size)
    end

    def size=(value : UInt64)
      to_unsafe.as(LibGst::Memory*).value.size = UInt64.new(value)
    end

  end
end

