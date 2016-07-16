require "./object"

module Gst
  class BufferPool < Object
    @gst_buffer_pool : LibGst::BufferPool*?
    def initialize(@gst_buffer_pool : LibGst::BufferPool*)
    end

    def to_unsafe
      @gst_buffer_pool.not_nil!.as(Void*)
    end

    def self.new : self
      __return_value = LibGst.buffer_pool_new
      cast Gst::BufferPool.new(__return_value)
    end

    def self.config_add_option(config, option)
      __return_value = LibGst.buffer_pool_config_add_option(config.to_unsafe.as(LibGst::Structure*), option.to_unsafe)
      __return_value
    end

    def self.config_get_allocator(config, allocator, params)
      __return_value = LibGst.buffer_pool_config_get_allocator(config.to_unsafe.as(LibGst::Structure*), allocator.to_unsafe.as(LibGst::Allocator*), params)
      __return_value
    end

    def self.config_get_option(config, index)
      __return_value = LibGst.buffer_pool_config_get_option(config.to_unsafe.as(LibGst::Structure*), UInt32.new(index))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.config_get_params(config, caps, size, min_buffers, max_buffers)
      __return_value = LibGst.buffer_pool_config_get_params(config.to_unsafe.as(LibGst::Structure*), caps.to_unsafe.as(LibGst::Caps*), UInt32.new(size), UInt32.new(min_buffers), UInt32.new(max_buffers))
      __return_value
    end

    def self.config_has_option(config, option)
      __return_value = LibGst.buffer_pool_config_has_option(config.to_unsafe.as(LibGst::Structure*), option.to_unsafe)
      __return_value
    end

    def self.config_n_options(config)
      __return_value = LibGst.buffer_pool_config_n_options(config.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def self.config_set_allocator(config, allocator, params)
      __return_value = LibGst.buffer_pool_config_set_allocator(config.to_unsafe.as(LibGst::Structure*), allocator && allocator.to_unsafe.as(LibGst::Allocator*), params && params.to_unsafe.as(LibGst::AllocationParams*))
      __return_value
    end

    def self.config_set_params(config, caps, size, min_buffers, max_buffers)
      __return_value = LibGst.buffer_pool_config_set_params(config.to_unsafe.as(LibGst::Structure*), caps.to_unsafe.as(LibGst::Caps*), UInt32.new(size), UInt32.new(min_buffers), UInt32.new(max_buffers))
      __return_value
    end

    def self.config_validate_params(config, caps, size, min_buffers, max_buffers)
      __return_value = LibGst.buffer_pool_config_validate_params(config.to_unsafe.as(LibGst::Structure*), caps.to_unsafe.as(LibGst::Caps*), UInt32.new(size), UInt32.new(min_buffers), UInt32.new(max_buffers))
      __return_value
    end

    def acquire_buffer(buffer, params)
      __return_value = LibGst.buffer_pool_acquire_buffer(to_unsafe.as(LibGst::BufferPool*), buffer.to_unsafe.as(LibGst::Buffer*), params && params.to_unsafe.as(LibGst::BufferPoolAcquireParams*))
      __return_value
    end

    def config
      __return_value = LibGst.buffer_pool_get_config(to_unsafe.as(LibGst::BufferPool*))
      Gst::Structure.new(__return_value)
    end

    def options
      __return_value = LibGst.buffer_pool_get_options(to_unsafe.as(LibGst::BufferPool*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def has_option(option)
      __return_value = LibGst.buffer_pool_has_option(to_unsafe.as(LibGst::BufferPool*), option.to_unsafe)
      __return_value
    end

    def active?
      __return_value = LibGst.buffer_pool_is_active(to_unsafe.as(LibGst::BufferPool*))
      __return_value
    end

    def release_buffer(buffer)
      __return_value = LibGst.buffer_pool_release_buffer(to_unsafe.as(LibGst::BufferPool*), buffer.to_unsafe.as(LibGst::Buffer*))
      __return_value
    end

    def active=(active)
      __return_value = LibGst.buffer_pool_set_active(to_unsafe.as(LibGst::BufferPool*), active)
      __return_value
    end

    def config=(config)
      __return_value = LibGst.buffer_pool_set_config(to_unsafe.as(LibGst::BufferPool*), config.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def flushing=(flushing)
      __return_value = LibGst.buffer_pool_set_flushing(to_unsafe.as(LibGst::BufferPool*), flushing)
      __return_value
    end

  end
end

