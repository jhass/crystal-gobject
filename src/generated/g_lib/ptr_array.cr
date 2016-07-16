module GLib
  class PtrArray
    include GObject::WrappedType

    def self.new(pdata : Void*|Nil = nil, len : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::PtrArray*)).tap do |object|
        object.pdata = pdata unless pdata.nil?
        object.len = len unless len.nil?
      end
    end

    @g_lib_ptr_array : LibGLib::PtrArray*?
    def initialize(@g_lib_ptr_array : LibGLib::PtrArray*)
    end

    def to_unsafe
      @g_lib_ptr_array.not_nil!.as(Void*)
    end

    def pdata
      (to_unsafe.value.pdata)
    end

    def pdata=(value : Void*)
      to_unsafe.value.pdata = value
    end

    def len
      (to_unsafe.value.len)
    end

    def len=(value : UInt32)
      to_unsafe.value.len = UInt32.new(value)
    end

  end
end

