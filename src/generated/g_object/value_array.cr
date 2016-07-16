module GObject
  class ValueArray
    include GObject::WrappedType

    def self.new(n_values : UInt32|Nil = nil, values : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::ValueArray*)).tap do |object|
        object.n_values = n_values unless n_values.nil?
        object.values = values unless values.nil?
      end
    end

    @g_object_value_array : LibGObject::ValueArray*?
    def initialize(@g_object_value_array : LibGObject::ValueArray*)
    end

    def to_unsafe
      @g_object_value_array.not_nil!.as(Void*)
    end

    def self.new(n_prealloced) : self
      __return_value = LibGObject.value_array_new(UInt32.new(n_prealloced))
      cast GObject::ValueArray.new(__return_value)
    end

    def append(value)
      __return_value = LibGObject.value_array_append(to_unsafe.as(LibGObject::ValueArray*), value && value.to_unsafe.as(LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def copy
      __return_value = LibGObject.value_array_copy(to_unsafe.as(LibGObject::ValueArray*))
      GObject::ValueArray.new(__return_value)
    end

    def free
      __return_value = LibGObject.value_array_free(to_unsafe.as(LibGObject::ValueArray*))
      __return_value
    end

    def nth(index)
      __return_value = LibGObject.value_array_get_nth(to_unsafe.as(LibGObject::ValueArray*), UInt32.new(index))
      GObject::Value.new(__return_value)
    end

    def insert(index, value)
      __return_value = LibGObject.value_array_insert(to_unsafe.as(LibGObject::ValueArray*), UInt32.new(index), value && value.to_unsafe.as(LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def prepend(value)
      __return_value = LibGObject.value_array_prepend(to_unsafe.as(LibGObject::ValueArray*), value && value.to_unsafe.as(LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def remove(index)
      __return_value = LibGObject.value_array_remove(to_unsafe.as(LibGObject::ValueArray*), UInt32.new(index))
      GObject::ValueArray.new(__return_value)
    end

    def sort(compare_func : LibGLib::CompareDataFunc, user_data)
      __return_value = LibGObject.value_array_sort(to_unsafe.as(LibGObject::ValueArray*), compare_func, user_data && user_data)
      GObject::ValueArray.new(__return_value)
    end

    def n_values
      (to_unsafe.value.n_values)
    end

    def n_values=(value : UInt32)
      to_unsafe.value.n_values = UInt32.new(value)
    end

    def values
      GObject::Value.new((to_unsafe.value.values))
    end

    def values=(value : GObject::Value)
      to_unsafe.value.values = value.to_unsafe.as(LibGObject::Value*)
    end

    def n_prealloced
      (to_unsafe.value.n_prealloced)
    end

  end
end

