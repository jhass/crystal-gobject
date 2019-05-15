module GObject
  class TypeCValue
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGObject::TypeCValue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeCValue*)
    end

  end
end

