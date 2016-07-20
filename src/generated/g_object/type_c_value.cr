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

    @g_object_type_c_value : LibGObject::TypeCValue*?
    def initialize(@g_object_type_c_value : LibGObject::TypeCValue*)
    end

    def to_unsafe
      @g_object_type_c_value.not_nil!.as(Void*)
    end

  end
end

