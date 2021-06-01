module GIRepository
  class AttributeIter
    include GObject::WrappedType

    def self.new : self
      new(Pointer(UInt8).malloc(32u64, 0u8).as(LibGIRepository::AttributeIter*))
    end

    @pointer : Void*

    def initialize(pointer : LibGIRepository::AttributeIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::AttributeIter*)
    end

    def to_unsafe_girepository_attributeiter
      @pointer.not_nil!.as(LibGIRepository::AttributeIter*)
    end

    def data
      to_unsafe.as(LibGIRepository::AttributeIter*).value.data
    end

    def data2
      to_unsafe.as(LibGIRepository::AttributeIter*).value.data2
    end

    def data3
      to_unsafe.as(LibGIRepository::AttributeIter*).value.data3
    end

    def data4
      to_unsafe.as(LibGIRepository::AttributeIter*).value.data4
    end
  end
end
