module GObject
  class TypeFundamentalInfo
    include GObject::WrappedType

    @g_object_type_fundamental_info : LibGObject::TypeFundamentalInfo*?
    def initialize(@g_object_type_fundamental_info : LibGObject::TypeFundamentalInfo*)
    end

    def to_unsafe
      @g_object_type_fundamental_info.not_nil!
    end

  end
end

