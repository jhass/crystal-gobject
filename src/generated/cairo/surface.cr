module Cairo
  class Surface
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Surface*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Surface*)
    end

  end
end

