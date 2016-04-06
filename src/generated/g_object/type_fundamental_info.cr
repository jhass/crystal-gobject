module GObject
  class TypeFundamentalInfo
    include GObject::WrappedType

    def initialize(@g_object_type_fundamental_info)
    end

    def to_unsafe
      @g_object_type_fundamental_info.not_nil!
    end

  end
end

