module GObject
  class TypeValueTable
    include GObject::WrappedType

    @g_object_type_value_table : LibGObject::TypeValueTable*?
    def initialize(@g_object_type_value_table : LibGObject::TypeValueTable*)
    end

    def to_unsafe
      @g_object_type_value_table.not_nil!
    end

  end
end

