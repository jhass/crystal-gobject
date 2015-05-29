module GLib
  class Variant
    include GObject::WrappedType

    def initialize @g_lib_variant
    end

    def to_unsafe
      @g_lib_variant.not_nil!
    end

    def self.new_array(child_type, children, n_children)
      __return_value = LibGLib.variant_new_array(child_type && (child_type.to_unsafe as LibGLib::VariantType*), children && children, UInt64.cast(n_children))
      GLib::Variant.new(__return_value)
    end

    def self.new_boolean(value)
      __return_value = LibGLib.variant_new_boolean(Bool.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_byte(value)
      __return_value = LibGLib.variant_new_byte(UInt8.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_bytestring(string)
      __return_value = LibGLib.variant_new_bytestring(string)
      GLib::Variant.new(__return_value)
    end

    def self.new_bytestring_array(strv, length)
      __return_value = LibGLib.variant_new_bytestring_array(strv, Int64.cast(length))
      GLib::Variant.new(__return_value)
    end

    def self.new_dict_entry(key, value)
      __return_value = LibGLib.variant_new_dict_entry((key.to_unsafe as LibGLib::Variant*), (value.to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def self.new_double(value)
      __return_value = LibGLib.variant_new_double(Float64.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_fixed_array(element_type, elements, n_elements, element_size)
      __return_value = LibGLib.variant_new_fixed_array((element_type.to_unsafe as LibGLib::VariantType*), elements, UInt64.cast(n_elements), UInt64.cast(element_size))
      GLib::Variant.new(__return_value)
    end

    def self.new_from_bytes(type, bytes, trusted)
      __return_value = LibGLib.variant_new_from_bytes((type.to_unsafe as LibGLib::VariantType*), (bytes.to_unsafe as LibGLib::Bytes*), Bool.cast(trusted))
      GLib::Variant.new(__return_value)
    end

    def self.new_from_data(type, data, size, trusted, notify : LibGLib::DestroyNotify, user_data)
      __return_value = LibGLib.variant_new_from_data((type.to_unsafe as LibGLib::VariantType*), data, UInt64.cast(size), Bool.cast(trusted), notify, user_data)
      GLib::Variant.new(__return_value)
    end

    def self.new_handle(value)
      __return_value = LibGLib.variant_new_handle(Int32.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_int16(value)
      __return_value = LibGLib.variant_new_int16(Int16.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_int32(value)
      __return_value = LibGLib.variant_new_int32(Int32.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_int64(value)
      __return_value = LibGLib.variant_new_int64(Int64.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_maybe(child_type, child)
      __return_value = LibGLib.variant_new_maybe(child_type && (child_type.to_unsafe as LibGLib::VariantType*), child && (child.to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def self.new_object_path(object_path)
      __return_value = LibGLib.variant_new_object_path(object_path)
      GLib::Variant.new(__return_value)
    end

    def self.new_objv(strv, length)
      __return_value = LibGLib.variant_new_objv(strv, Int64.cast(length))
      GLib::Variant.new(__return_value)
    end

    def self.new_signature(signature)
      __return_value = LibGLib.variant_new_signature(signature)
      GLib::Variant.new(__return_value)
    end

    def self.new_string(string)
      __return_value = LibGLib.variant_new_string(string)
      GLib::Variant.new(__return_value)
    end

    def self.new_strv(strv, length)
      __return_value = LibGLib.variant_new_strv(strv, Int64.cast(length))
      GLib::Variant.new(__return_value)
    end

    def self.new_tuple(children, n_children)
      __return_value = LibGLib.variant_new_tuple(children, UInt64.cast(n_children))
      GLib::Variant.new(__return_value)
    end

    def self.new_uint16(value)
      __return_value = LibGLib.variant_new_uint16(UInt16.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_uint32(value)
      __return_value = LibGLib.variant_new_uint32(UInt32.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_uint64(value)
      __return_value = LibGLib.variant_new_uint64(UInt64.cast(value))
      GLib::Variant.new(__return_value)
    end

    def self.new_variant(value)
      __return_value = LibGLib.variant_new_variant((value.to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def byteswap
      __return_value = LibGLib.variant_byteswap((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def check_format_string(format_string, copy_only)
      __return_value = LibGLib.variant_check_format_string((to_unsafe as LibGLib::Variant*), format_string, Bool.cast(copy_only))
      __return_value
    end

    def classify
      __return_value = LibGLib.variant_classify((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def compare(two)
      __return_value = LibGLib.variant_compare((to_unsafe as LibGLib::Variant*), (two.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def dup_bytestring(length)
      __return_value = LibGLib.variant_dup_bytestring((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_45| __item_45 }
    end

    def dup_bytestring_array(length)
      __return_value = LibGLib.variant_dup_bytestring_array((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_21| raise "Expected string but got null" unless __item_21; String.new(__item_21) }
    end

    def dup_objv(length)
      __return_value = LibGLib.variant_dup_objv((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_84| raise "Expected string but got null" unless __item_84; String.new(__item_84) }
    end

    def dup_string(length)
      __return_value = LibGLib.variant_dup_string((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def dup_strv(length)
      __return_value = LibGLib.variant_dup_strv((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_86| raise "Expected string but got null" unless __item_86; String.new(__item_86) }
    end

    def equal(two)
      __return_value = LibGLib.variant_equal((to_unsafe as LibGLib::Variant*), (two.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def boolean
      __return_value = LibGLib.variant_get_boolean((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def byte
      __return_value = LibGLib.variant_get_byte((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def bytestring
      __return_value = LibGLib.variant_get_bytestring((to_unsafe as LibGLib::Variant*))
      PointerIterator.new(__return_value) {|__item_40| __item_40 }
    end

    def bytestring_array(length)
      __return_value = LibGLib.variant_get_bytestring_array((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_82| raise "Expected string but got null" unless __item_82; String.new(__item_82) }
    end

    def child_value(index)
      __return_value = LibGLib.variant_get_child_value((to_unsafe as LibGLib::Variant*), UInt64.cast(index))
      GLib::Variant.new(__return_value)
    end

    def data
      __return_value = LibGLib.variant_get_data((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def data_as_bytes
      __return_value = LibGLib.variant_get_data_as_bytes((to_unsafe as LibGLib::Variant*))
      GLib::Bytes.new(__return_value)
    end

    def double
      __return_value = LibGLib.variant_get_double((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def handle
      __return_value = LibGLib.variant_get_handle((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def int16
      __return_value = LibGLib.variant_get_int16((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def int32
      __return_value = LibGLib.variant_get_int32((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def int64
      __return_value = LibGLib.variant_get_int64((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def maybe
      __return_value = LibGLib.variant_get_maybe((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def normal_form
      __return_value = LibGLib.variant_get_normal_form((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def objv(length)
      __return_value = LibGLib.variant_get_objv((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_79| raise "Expected string but got null" unless __item_79; String.new(__item_79) }
    end

    def size
      __return_value = LibGLib.variant_get_size((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def string(length)
      __return_value = LibGLib.variant_get_string((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def strv(length)
      __return_value = LibGLib.variant_get_strv((to_unsafe as LibGLib::Variant*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_32| raise "Expected string but got null" unless __item_32; String.new(__item_32) }
    end

    def type
      __return_value = LibGLib.variant_get_type((to_unsafe as LibGLib::Variant*))
      GLib::VariantType.new(__return_value)
    end

    def type_string
      __return_value = LibGLib.variant_get_type_string((to_unsafe as LibGLib::Variant*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def uint16
      __return_value = LibGLib.variant_get_uint16((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def uint32
      __return_value = LibGLib.variant_get_uint32((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def uint64
      __return_value = LibGLib.variant_get_uint64((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def variant
      __return_value = LibGLib.variant_get_variant((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def hash
      __return_value = LibGLib.variant_hash((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def is_container
      __return_value = LibGLib.variant_is_container((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def is_floating
      __return_value = LibGLib.variant_is_floating((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def is_normal_form
      __return_value = LibGLib.variant_is_normal_form((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def is_of_type(type)
      __return_value = LibGLib.variant_is_of_type((to_unsafe as LibGLib::Variant*), (type.to_unsafe as LibGLib::VariantType*))
      __return_value
    end

    def lookup_value(key, expected_type)
      __return_value = LibGLib.variant_lookup_value((to_unsafe as LibGLib::Variant*), key, expected_type && (expected_type.to_unsafe as LibGLib::VariantType*))
      GLib::Variant.new(__return_value)
    end

    def n_children
      __return_value = LibGLib.variant_n_children((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def print(type_annotate)
      __return_value = LibGLib.variant_print((to_unsafe as LibGLib::Variant*), Bool.cast(type_annotate))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def ref
      __return_value = LibGLib.variant_ref((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def ref_sink
      __return_value = LibGLib.variant_ref_sink((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def store(data)
      __return_value = LibGLib.variant_store((to_unsafe as LibGLib::Variant*), data)
      __return_value
    end

    def take_ref
      __return_value = LibGLib.variant_take_ref((to_unsafe as LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def unref
      __return_value = LibGLib.variant_unref((to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def self.is_object_path(string)
      __return_value = LibGLib.variant_is_object_path(string)
      __return_value
    end

    def self.is_signature(string)
      __return_value = LibGLib.variant_is_signature(string)
      __return_value
    end

    def self.parse(type, text, limit, endptr)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.variant_parse(type && (type.to_unsafe as LibGLib::VariantType*), text, limit && limit, endptr && endptr, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def self.parse_error_print_context(error, source_str)
      __return_value = LibGLib.variant_parse_error_print_context(error, source_str)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def self.parse_error_quark
      __return_value = LibGLib.variant_parse_error_quark
      __return_value
    end

    def self.parser_get_error_quark
      __return_value = LibGLib.variant_parser_get_error_quark
      __return_value
    end

  end
end

