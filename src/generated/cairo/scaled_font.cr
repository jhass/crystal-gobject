module Cairo
  class ScaledFont
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::ScaledFont*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::ScaledFont*)
    end

  end
end

