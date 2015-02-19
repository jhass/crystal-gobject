module GObject
  class ValueArray
    include GObject::WrappedType
    def initialize @g_object_value_array
    end

    def to_unsafe
      @g_object_value_array.not_nil!
    end

    def self.new_internal(n_prealloced)
      __return_value = LibGObject.value_array_new(UInt32.cast(n_prealloced))
      GObject::ValueArray.new(__return_value)
    end

    def append(value)
      __return_value = LibGObject.value_array_append((to_unsafe as LibGObject::ValueArray*), (value.to_unsafe as LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def copy
      __return_value = LibGObject.value_array_copy((to_unsafe as LibGObject::ValueArray*))
      GObject::ValueArray.new(__return_value)
    end

    def free
      __return_value = LibGObject.value_array_free((to_unsafe as LibGObject::ValueArray*))
      __return_value
    end

    def nth(index)
      __return_value = LibGObject.value_array_get_nth((to_unsafe as LibGObject::ValueArray*), UInt32.cast(index))
      GObject::Value.new(__return_value)
    end

    def insert(index, value)
      __return_value = LibGObject.value_array_insert((to_unsafe as LibGObject::ValueArray*), UInt32.cast(index), (value.to_unsafe as LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def prepend(value)
      __return_value = LibGObject.value_array_prepend((to_unsafe as LibGObject::ValueArray*), (value.to_unsafe as LibGObject::Value*))
      GObject::ValueArray.new(__return_value)
    end

    def remove(index)
      __return_value = LibGObject.value_array_remove((to_unsafe as LibGObject::ValueArray*), UInt32.cast(index))
      GObject::ValueArray.new(__return_value)
    end

    def sort(compare_func, user_data)
      __return_value = LibGObject.value_array_sort((to_unsafe as LibGObject::ValueArray*), compare_func, user_data)
      GObject::ValueArray.new(__return_value)
    end

  end
end

