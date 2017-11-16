module Cairo
  class Path
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::Path*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Path*)
    end

  end
end

