module Gst
  class BufferList
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::BufferList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::BufferList*)
    end

    def self.new : self
      __return_value = LibGst.buffer_list_new
      cast Gst::BufferList.new(__return_value)
    end

    def self.new_sized(size) : self
      __return_value = LibGst.buffer_list_new_sized(UInt32.new(size))
      cast Gst::BufferList.new(__return_value)
    end

    def copy_deep
      __return_value = LibGst.buffer_list_copy_deep(@pointer.as(LibGst::BufferList*))
      Gst::BufferList.new(__return_value)
    end

    def foreach(func, user_data)
      __return_value = LibGst.buffer_list_foreach(@pointer.as(LibGst::BufferList*), func, user_data ? user_data : nil)
      __return_value
    end

    def get(idx)
      __return_value = LibGst.buffer_list_get(@pointer.as(LibGst::BufferList*), UInt32.new(idx))
      Gst::Buffer.new(__return_value) if __return_value
    end

    def insert(idx, buffer)
      LibGst.buffer_list_insert(@pointer.as(LibGst::BufferList*), Int32.new(idx), buffer.to_unsafe.as(LibGst::Buffer*))
      nil
    end

    def length
      __return_value = LibGst.buffer_list_length(@pointer.as(LibGst::BufferList*))
      __return_value
    end

    def remove(idx, length)
      LibGst.buffer_list_remove(@pointer.as(LibGst::BufferList*), UInt32.new(idx), UInt32.new(length))
      nil
    end

  end
end

