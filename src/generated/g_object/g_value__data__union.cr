module GObject
  class G_Value__data__union
    include GObject::WrappedType

    def v_int
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_int)
    end

    def v_uint
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_uint)
    end

    def v_long
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_long)
    end

    def v_ulong
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_ulong)
    end

    def v_int64
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_int64)
    end

    def v_uint64
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_uint64)
    end

    def v_float
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_float)
    end

    def v_double
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_double)
    end

    def v_pointer
      (to_unsafe.as(LibGObject::G_Value__data__union*).value.v_pointer)
    end

    @g_object_g_value__data__union : LibGObject::G_Value__data__union*?
    def initialize(@g_object_g_value__data__union : LibGObject::G_Value__data__union*)
    end

    def to_unsafe
      @g_object_g_value__data__union.not_nil!
    end

  end
end

