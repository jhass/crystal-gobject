module GObject
  class G_Value__data__union
    include GObject::WrappedType

    @g_object_g_value__data__union : LibGObject::G_Value__data__union*?
    def initialize(@g_object_g_value__data__union : LibGObject::G_Value__data__union*)
    end

    def to_unsafe
      @g_object_g_value__data__union.not_nil!.as(Void*)
    end

  end
end

