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

    @gst_allocation_params : LibGst::AllocationParams*?
    def initialize(@gst_allocation_params : LibGst::AllocationParams*)
    end

    def to_unsafe
      @gst_allocation_params.not_nil!
    end

    def copy
      __return_value = LibGst.allocation_params_copy(to_unsafe.as(LibGst::AllocationParams*))
      Gst::AllocationParams.new(__return_value)
    end

    def free
      __return_value = LibGst.allocation_params_free(to_unsafe.as(LibGst::AllocationParams*))
      __return_value
    end

    def init
      __return_value = LibGst.allocation_params_init(to_unsafe.as(LibGst::AllocationParams*))
      __return_value
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Gst::MemoryFlags)
      to_unsafe.value.flags = value
    end

    def align
      (to_unsafe.value.align)
    end

    def align=(value : UInt64)
      to_unsafe.value.align = UInt64.new(value)
    end

    def prefix
      (to_unsafe.value.prefix)
    end

    def prefix=(value : UInt64)
      to_unsafe.value.prefix = UInt64.new(value)
    end

    def padding
      (to_unsafe.value.padding)
    end

    def padding=(value : UInt64)
      to_unsafe.value.padding = UInt64.new(value)
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.value._gst_reserved)) {|__item| __item }
    end

  end
end

