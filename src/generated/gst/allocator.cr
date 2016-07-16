require "./object"

module Gst
  class Allocator < Object
    @gst_allocator : LibGst::Allocator*?
    def initialize(@gst_allocator : LibGst::Allocator*)
    end

    def to_unsafe
      @gst_allocator.not_nil!.as(Void*)
    end

    def self.find(name)
      __return_value = LibGst.allocator_find(name && name.to_unsafe)
      Gst::Allocator.new(__return_value) if __return_value
    end

    def self.register(name, allocator)
      __return_value = LibGst.allocator_register(name.to_unsafe, allocator.to_unsafe.as(LibGst::Allocator*))
      __return_value
    end

    def alloc(size, params)
      __return_value = LibGst.allocator_alloc(to_unsafe.as(LibGst::Allocator*), UInt64.new(size), params && params.to_unsafe.as(LibGst::AllocationParams*))
      Gst::Memory.new(__return_value)
    end

    def free(memory)
      __return_value = LibGst.allocator_free(to_unsafe.as(LibGst::Allocator*), memory.to_unsafe.as(LibGst::Memory*))
      __return_value
    end

    def set_default
      __return_value = LibGst.allocator_set_default(to_unsafe.as(LibGst::Allocator*))
      __return_value
    end

  end
end

