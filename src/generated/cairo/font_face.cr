module Cairo
  class FontFace
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibCairo::FontFace*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::FontFace*)
    end

  end
end

