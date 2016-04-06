module GObject
  class TypeQuery
    include GObject::WrappedType

    def initialize(@g_object_type_query)
    end

    def to_unsafe
      @g_object_type_query.not_nil!
    end

  end
end

