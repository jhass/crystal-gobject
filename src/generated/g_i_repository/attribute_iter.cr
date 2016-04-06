module GIRepository
  class AttributeIter
    include GObject::WrappedType

    def initialize(@g_i_repository_attribute_iter)
    end

    def to_unsafe
      @g_i_repository_attribute_iter.not_nil!
    end

  end
end

