module Gst
  class MapInfo
    include GObject::WrappedType

    def self.new(memory : Gst::Memory|Nil = nil, flags : Gst::MapFlags|Nil = nil, data : Array(UInt8)|Nil = nil, size : UInt64|Nil = nil, maxsize : UInt64|Nil = nil, user_data : Array(Void*)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(104, 0u8)
      new(ptr.as(LibGst::MapInfo*)).tap do |object|
        object.memory = memory unless memory.nil?
        object.flags = flags unless flags.nil?
        object.data = data unless data.nil?
        object.size = size unless size.nil?
        object.maxsize = maxsize unless maxsize.nil?
        object.user_data = user_data unless user_data.nil?
      end
    end

    @gst_map_info : LibGst::MapInfo*?
    def initialize(@gst_map_info : LibGst::MapInfo*)
    end

    def to_unsafe
      @gst_map_info.not_nil!
    end

    def memory
      Gst::Memory.new((to_unsafe.value.memory))
    end

    def memory=(value : Gst::Memory)
      to_unsafe.value.memory = value.to_unsafe.as(LibGst::Memory*)
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Gst::MapFlags)
      to_unsafe.value.flags = value
    end

    def data
      PointerIterator.new((to_unsafe.value.data)) {|__item| __item }
    end

    def data=(value : Array(UInt8))
      to_unsafe.value.data = value
    end

    def size
      (to_unsafe.value.size)
    end

    def size=(value : UInt64)
      to_unsafe.value.size = UInt64.new(value)
    end

    def maxsize
      (to_unsafe.value.maxsize)
    end

    def maxsize=(value : UInt64)
      to_unsafe.value.maxsize = UInt64.new(value)
    end

    def user_data
      PointerIterator.new((to_unsafe.value.user_data)) {|__item| __item }
    end

    def user_data=(value : Array(Void*))
      to_unsafe.value.user_data = value
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.value._gst_reserved)) {|__item| __item }
    end

  end
end

