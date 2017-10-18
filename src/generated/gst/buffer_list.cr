module Gst
  class BufferList
    include GObject::WrappedType

    @gst_buffer_list : LibGst::BufferList*?
    def initialize(@gst_buffer_list : LibGst::BufferList*)
    end

    def to_unsafe
      @gst_buffer_list.not_nil!
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
      __return_value = LibGst.buffer_list_copy_deep(to_unsafe.as(LibGst::BufferList*))
      Gst::BufferList.new(__return_value)
    end

    def foreach(func, user_data)
      __return_value = LibGst.buffer_list_foreach(to_unsafe.as(LibGst::BufferList*), func, user_data ? user_data : nil)
      __return_value
    end

    def get(idx)
      __return_value = LibGst.buffer_list_get(to_unsafe.as(LibGst::BufferList*), UInt32.new(idx))
      Gst::Buffer.new(__return_value) if __return_value
    end

    def insert(idx, buffer)
      LibGst.buffer_list_insert(to_unsafe.as(LibGst::BufferList*), Int32.new(idx), buffer.to_unsafe.as(LibGst::Buffer*))
      nil
    end

    def length
      __return_value = LibGst.buffer_list_length(to_unsafe.as(LibGst::BufferList*))
      __return_value
    end

    def remove(idx, length)
      LibGst.buffer_list_remove(to_unsafe.as(LibGst::BufferList*), UInt32.new(idx), UInt32.new(length))
      nil
    end

  end
end

