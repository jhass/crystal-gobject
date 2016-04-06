module Gst
  class ValueArray
    include GObject::WrappedType

    def initialize(@gst_value_array)
    end

    def to_unsafe
      @gst_value_array.not_nil!
    end

    def self.append_and_take_value(value, append_value)
      __return_value = LibGst.value_array_append_and_take_value((value.to_unsafe as LibGObject::Value*), (append_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.append_value(value, append_value)
      __return_value = LibGst.value_array_append_value((value.to_unsafe as LibGObject::Value*), (append_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.size(value)
      __return_value = LibGst.value_array_get_size((value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.value(value, index)
      __return_value = LibGst.value_array_get_value((value.to_unsafe as LibGObject::Value*), UInt32.new(index))
      GObject::Value.new(__return_value)
    end

    def self.prepend_value(value, prepend_value)
      __return_value = LibGst.value_array_prepend_value((value.to_unsafe as LibGObject::Value*), (prepend_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

  end
end

