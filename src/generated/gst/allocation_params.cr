module Gst
  class AllocationParams
    include GObject::WrappedType

    def self.new(flags : Gst::MemoryFlags|Nil = nil, align : UInt64|Nil = nil, prefix : UInt64|Nil = nil, padding : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::AllocationParams*)).tap do |object|
        object.flags = flags unless flags.nil?
        object.align = align unless align.nil?
        object.prefix = prefix unless prefix.nil?
        object.padding = padding unless padding.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::AllocationParams*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::AllocationParams*)
    end

    def copy
      __return_value = LibGst.allocation_params_copy(@pointer.as(LibGst::AllocationParams*))
      Gst::AllocationParams.new(__return_value) if __return_value
    end

    def free
      LibGst.allocation_params_free(@pointer.as(LibGst::AllocationParams*))
      nil
    end

    def init
      LibGst.allocation_params_init(@pointer.as(LibGst::AllocationParams*))
      nil
    end

    def flags
      (to_unsafe.as(LibGst::AllocationParams*).value.flags)
    end

    def flags=(value : Gst::MemoryFlags)
      to_unsafe.as(LibGst::AllocationParams*).value.flags = value
    end

    def align
      (to_unsafe.as(LibGst::AllocationParams*).value.align)
    end

    def align=(value : UInt64)
      to_unsafe.as(LibGst::AllocationParams*).value.align = UInt64.new(value)
    end

    def prefix
      (to_unsafe.as(LibGst::AllocationParams*).value.prefix)
    end

    def prefix=(value : UInt64)
      to_unsafe.as(LibGst::AllocationParams*).value.prefix = UInt64.new(value)
    end

    def padding
      (to_unsafe.as(LibGst::AllocationParams*).value.padding)
    end

    def padding=(value : UInt64)
      to_unsafe.as(LibGst::AllocationParams*).value.padding = UInt64.new(value)
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::AllocationParams*).value._gst_reserved)) {|__item| __item }
    end

  end
end

