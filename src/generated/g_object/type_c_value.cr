module GObject
  class TypeCValue
    include GObject::WrappedType

    def v_int
      (to_unsafe.as(LibGObject::TypeCValue*).value.v_int)
    end

    def v_long
      (to_unsafe.as(LibGObject::TypeCValue*).value.v_long)
    end

    def v_int64
      (to_unsafe.as(LibGObject::TypeCValue*).value.v_int64)
    end

    def v_double
      (to_unsafe.as(LibGObject::TypeCValue*).value.v_double)
    end

    def v_pointer
      (to_unsafe.as(LibGObject::TypeCValue*).value.v_pointer)
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::TypeCValue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeCValue*)
    end

  end
end

