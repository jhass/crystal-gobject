module Cairo
  class Matrix
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Matrix*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Matrix*)
    end

  end
end

