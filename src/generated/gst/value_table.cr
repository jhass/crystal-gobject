module Gst
  class ValueTable
    include GObject::WrappedType

    def self.new(type : UInt64|Nil = nil, compare : Gst::ValueCompareFunc|Nil = nil, serialize : Gst::ValueSerializeFunc|Nil = nil, deserialize : Gst::ValueDeserializeFunc|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::ValueTable*)).tap do |object|
        object.type = type unless type.nil?
        object.compare = compare unless compare.nil?
        object.serialize = serialize unless serialize.nil?
        object.deserialize = deserialize unless deserialize.nil?
      end
    end

    @gst_value_table : LibGst::ValueTable*?
    def initialize(@gst_value_table : LibGst::ValueTable*)
    end

    def to_unsafe
      @gst_value_table.not_nil!
    end

    def type
      (to_unsafe.as(LibGst::ValueTable*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGst::ValueTable*).value.type = UInt64.new(value)
    end

    def compare
      (to_unsafe.as(LibGst::ValueTable*).value.compare)
    end

    def compare=(value : Gst::ValueCompareFunc)
      to_unsafe.as(LibGst::ValueTable*).value.compare = value
    end

    def serialize
      (to_unsafe.as(LibGst::ValueTable*).value.serialize)
    end

    def serialize=(value : Gst::ValueSerializeFunc)
      to_unsafe.as(LibGst::ValueTable*).value.serialize = value
    end

    def deserialize
      (to_unsafe.as(LibGst::ValueTable*).value.deserialize)
    end

    def deserialize=(value : Gst::ValueDeserializeFunc)
      to_unsafe.as(LibGst::ValueTable*).value.deserialize = value
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::ValueTable*).value._gst_reserved)) {|__item| __item }
    end

  end
end

