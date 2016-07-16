module GIRepository
  class AttributeIter
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(32, 0)
      super(ptr.as(LibGIRepository::AttributeIter*))
    end

    @g_i_repository_attribute_iter : LibGIRepository::AttributeIter*?
    def initialize(@g_i_repository_attribute_iter : LibGIRepository::AttributeIter*)
    end

    def to_unsafe
      @g_i_repository_attribute_iter.not_nil!
    end

    def data
      (to_unsafe.value.data)
    end

    def data2
      (to_unsafe.value.data2)
    end

    def data3
      (to_unsafe.value.data3)
    end

    def data4
      (to_unsafe.value.data4)
    end

  end
end

