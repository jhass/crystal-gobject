module GObject
  class TypeQuery
    include GObject::WrappedType

    @g_object_type_query : LibGObject::TypeQuery*?
    def initialize(@g_object_type_query : LibGObject::TypeQuery*)
    end

    def to_unsafe
      @g_object_type_query.not_nil!
    end

  end
end

