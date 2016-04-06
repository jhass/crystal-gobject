module Gst
  class BufferList
    include GObject::WrappedType

    def initialize(@gst_buffer_list)
    end

    def to_unsafe
      @gst_buffer_list.not_nil!
    end

    def self.new_internal
      __return_value = LibGst.buffer_list_new
      Gst::BufferList.new(__return_value)
    end

    def self.new_sized(size)
      __return_value = LibGst.buffer_list_new_sized(UInt32.new(size))
      Gst::BufferList.new(__return_value)
    end

    def copy_deep
      __return_value = LibGst.buffer_list_copy_deep((to_unsafe as LibGst::BufferList*))
      Gst::BufferList.new(__return_value)
    end

    def foreach(func : LibGst::BufferListFunc, user_data)
      __return_value = LibGst.buffer_list_foreach((to_unsafe as LibGst::BufferList*), func, user_data)
      __return_value
    end

    def get(idx)
      __return_value = LibGst.buffer_list_get((to_unsafe as LibGst::BufferList*), UInt32.new(idx))
      Gst::Buffer.new(__return_value) if __return_value
    end

    def insert(idx, buffer)
      __return_value = LibGst.buffer_list_insert((to_unsafe as LibGst::BufferList*), Int32.new(idx), (buffer.to_unsafe as LibGst::Buffer*))
      __return_value
    end

    def length
      __return_value = LibGst.buffer_list_length((to_unsafe as LibGst::BufferList*))
      __return_value
    end

    def remove(idx, length)
      __return_value = LibGst.buffer_list_remove((to_unsafe as LibGst::BufferList*), UInt32.new(idx), UInt32.new(length))
      __return_value
    end

  end
end

