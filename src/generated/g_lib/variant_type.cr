module GLib
  class VariantType
    include GObject::WrappedType

    def initialize(@g_lib_variant_type)
    end

    def to_unsafe
      @g_lib_variant_type.not_nil!
    end

    def self.new_internal(type_string)
      __return_value = LibGLib.variant_type_new(type_string)
      GLib::VariantType.new(__return_value)
    end

    def self.new_array(element)
      __return_value = LibGLib.variant_type_new_array((element.to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def self.new_dict_entry(key, value)
      __return_value = LibGLib.variant_type_new_dict_entry((key.to_unsafe as LibGLib::VariantType*), (value.to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def self.new_maybe(element)
      __return_value = LibGLib.variant_type_new_maybe((element.to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def self.new_tuple(items, length)
      __return_value = LibGLib.variant_type_new_tuple(items, Int32.new(length))
      GLib::VariantType.new(__return_value)
    end

    def copy
      __return_value = LibGLib.variant_type_copy((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def dup_string
      __return_value = LibGLib.variant_type_dup_string((to_unsafe as LibGLib::VariantType*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def element
      __return_value = LibGLib.variant_type_element((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def equal(type2)
      __return_value = LibGLib.variant_type_equal((to_unsafe as LibGLib::VariantType*), (type2.to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def first
      __return_value = LibGLib.variant_type_first((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def free
      __return_value = LibGLib.variant_type_free((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def string_length
      __return_value = LibGLib.variant_type_get_string_length((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def hash
      __return_value = LibGLib.variant_type_hash((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def array?
      __return_value = LibGLib.variant_type_is_array((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def basic?
      __return_value = LibGLib.variant_type_is_basic((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def container?
      __return_value = LibGLib.variant_type_is_container((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def definite?
      __return_value = LibGLib.variant_type_is_definite((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def dict_entry?
      __return_value = LibGLib.variant_type_is_dict_entry((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def maybe?
      __return_value = LibGLib.variant_type_is_maybe((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def subtype_of?(supertype)
      __return_value = LibGLib.variant_type_is_subtype_of((to_unsafe as LibGLib::VariantType*), (supertype.to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def tuple?
      __return_value = LibGLib.variant_type_is_tuple((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def variant?
      __return_value = LibGLib.variant_type_is_variant((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def key
      __return_value = LibGLib.variant_type_key((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def n_items
      __return_value = LibGLib.variant_type_n_items((to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def next
      __return_value = LibGLib.variant_type_next((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def value
      __return_value = LibGLib.variant_type_value((to_unsafe as LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def self.checked_(arg0)
      __return_value = LibGLib.variant_type_checked_(arg0)
      GLib::VariantType.new(__return_value)
    end

    def self.string_is_valid(type_string)
      __return_value = LibGLib.variant_type_string_is_valid(type_string)
      __return_value
    end

    def self.string_scan(string, limit, endptr)
      __return_value = LibGLib.variant_type_string_scan(string, limit && limit, endptr)
      __return_value
    end

  end
end

