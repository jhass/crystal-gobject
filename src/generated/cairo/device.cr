module Cairo
  class Device
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Device*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Device*)
    end

  end
end

