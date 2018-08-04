require "./object"

module Gst
  class Allocator < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Allocator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Allocator*)
    end

    def self.find(name)
      __return_value = LibGst.allocator_find(name ? name.to_unsafe : nil)
      Gst::Allocator.new(__return_value) if __return_value
    end

    def self.register(name, allocator)
      LibGst.allocator_register(name.to_unsafe, allocator.to_unsafe.as(LibGst::Allocator*))
      nil
    end

    def alloc(size, params)
      __return_value = LibGst.allocator_alloc(@pointer.as(LibGst::Allocator*), UInt64.new(size), params ? params.to_unsafe.as(LibGst::AllocationParams*) : nil)
      Gst::Memory.new(__return_value) if __return_value
    end

    def free(memory)
      LibGst.allocator_free(@pointer.as(LibGst::Allocator*), memory.to_unsafe.as(LibGst::Memory*))
      nil
    end

    def set_default
      LibGst.allocator_set_default(@pointer.as(LibGst::Allocator*))
      nil
    end

  end
end

