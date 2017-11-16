module Cairo
  class FontOptions
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::FontOptions*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::FontOptions*)
    end

  end
end

