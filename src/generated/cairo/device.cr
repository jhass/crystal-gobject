module Cairo
  class Device
    include GObject::WrappedType

    @cairo_device : LibCairo::Device*?
    def initialize(@cairo_device : LibCairo::Device*)
    end

    def to_unsafe
      @cairo_device.not_nil!
    end

  end
end

