module GObject
  class TypeValueTable
    include GObject::WrappedType

    def initialize(@g_object_type_value_table)
    end

    def to_unsafe
      @g_object_type_value_table.not_nil!
    end

  end
end

