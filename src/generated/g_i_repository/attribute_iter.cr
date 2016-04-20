module GIRepository
  class AttributeIter
    include GObject::WrappedType

    @g_i_repository_attribute_iter : LibGIRepository::AttributeIter*?
    def initialize(@g_i_repository_attribute_iter : LibGIRepository::AttributeIter*)
    end

    def to_unsafe
      @g_i_repository_attribute_iter.not_nil!
    end

  end
end

