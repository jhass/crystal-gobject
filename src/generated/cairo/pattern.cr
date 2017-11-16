module Cairo
  class Pattern
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Pattern*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Pattern*)
    end

  end
end

