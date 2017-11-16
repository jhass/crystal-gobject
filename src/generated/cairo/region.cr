module Cairo
  class Region
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Region*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Region*)
    end

  end
end

