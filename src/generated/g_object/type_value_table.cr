module GObject
  class TypeValueTable
    include GObject::WrappedType

    def self.new(collect_format : String|Nil = nil, lcopy_format : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGObject::TypeValueTable*)).tap do |object|
        object.collect_format = collect_format unless collect_format.nil?
        object.lcopy_format = lcopy_format unless lcopy_format.nil?
      end
    end

    @g_object_type_value_table : LibGObject::TypeValueTable*?
    def initialize(@g_object_type_value_table : LibGObject::TypeValueTable*)
    end

    def to_unsafe
      @g_object_type_value_table.not_nil!.as(Void*)
    end

    def value_init
      (to_unsafe.as(LibGObject::TypeValueTable*).value.value_init)
    end

    def value_free
      (to_unsafe.as(LibGObject::TypeValueTable*).value.value_free)
    end

    def value_copy
      (to_unsafe.as(LibGObject::TypeValueTable*).value.value_copy)
    end

    def value_peek_pointer
      (to_unsafe.as(LibGObject::TypeValueTable*).value.value_peek_pointer)
    end

    def collect_format
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::TypeValueTable*).value.collect_format); ::String.new((to_unsafe.as(LibGObject::TypeValueTable*).value.collect_format)))
    end

    def collect_format=(value : String)
      to_unsafe.as(LibGObject::TypeValueTable*).value.collect_format = value.to_unsafe
    end

    def collect_value
      (to_unsafe.as(LibGObject::TypeValueTable*).value.collect_value)
    end

    def lcopy_format
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::TypeValueTable*).value.lcopy_format); ::String.new((to_unsafe.as(LibGObject::TypeValueTable*).value.lcopy_format)))
    end

    def lcopy_format=(value : String)
      to_unsafe.as(LibGObject::TypeValueTable*).value.lcopy_format = value.to_unsafe
    end

    def lcopy_value
      (to_unsafe.as(LibGObject::TypeValueTable*).value.lcopy_value)
    end

  end
end

