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

    @pointer : Void*
    def initialize(pointer : LibGLib::PtrArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::PtrArray*)
    end

    def pdata
      (to_unsafe.as(LibGLib::PtrArray*).value.pdata)
    end

    def pdata=(value : Void*)
      to_unsafe.as(LibGLib::PtrArray*).value.pdata = value
    end

    def len
      (to_unsafe.as(LibGLib::PtrArray*).value.len)
    end

    def len=(value : UInt32)
      to_unsafe.as(LibGLib::PtrArray*).value.len = UInt32.new(value)
    end

  end
end

