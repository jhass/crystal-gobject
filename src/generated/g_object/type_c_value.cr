module GObject
  class TypeCValue
    include GObject::WrappedType

    @g_object_type_c_value : LibGObject::TypeCValue*?
    def initialize(@g_object_type_c_value : LibGObject::TypeCValue*)
    end

    def to_unsafe
      @g_object_type_c_value.not_nil!.as(Void*)
    end

  end
end

