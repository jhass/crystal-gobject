module Cairo
  class Context
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Context*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Context*)
    end

  end
end

