module GLib
  class Variant
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Variant*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Variant*)
    end

    def self.new_array(child_type, children, n_children) : self
      __return_value = LibGLib.variant_new_array(child_type ? child_type.to_unsafe.as(LibGLib::VariantType*) : nil, children ? children : nil, UInt64.new(n_children))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_boolean(value) : self
      __return_value = LibGLib.variant_new_boolean(value)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_byte(value) : self
      __return_value = LibGLib.variant_new_byte(UInt8.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_bytestring(string) : self
      __return_value = LibGLib.variant_new_bytestring(string)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_bytestring_array(strv, length) : self
      __return_value = LibGLib.variant_new_bytestring_array(strv, Int64.new(length))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_dict_entry(key, value) : self
      __return_value = LibGLib.variant_new_dict_entry(key.to_unsafe.as(LibGLib::Variant*), value.to_unsafe.as(LibGLib::Variant*))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_double(value) : self
      __return_value = LibGLib.variant_new_double(Float64.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_fixed_array(element_type, elements, n_elements, element_size) : self
      __return_value = LibGLib.variant_new_fixed_array(element_type.to_unsafe.as(LibGLib::VariantType*), elements ? elements : nil, UInt64.new(n_elements), UInt64.new(element_size))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_from_bytes(type, bytes, trusted) : self
      __return_value = LibGLib.variant_new_from_bytes(type.to_unsafe.as(LibGLib::VariantType*), bytes.to_unsafe.as(LibGLib::Bytes*), trusted)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_from_data(type, data, size, trusted, notify, user_data) : self
      __return_value = LibGLib.variant_new_from_data(type.to_unsafe.as(LibGLib::VariantType*), data, UInt64.new(size), trusted, notify, user_data ? user_data : nil)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_handle(value) : self
      __return_value = LibGLib.variant_new_handle(Int32.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_int16(value) : self
      __return_value = LibGLib.variant_new_int16(Int16.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_int32(value) : self
      __return_value = LibGLib.variant_new_int32(Int32.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_int64(value) : self
      __return_value = LibGLib.variant_new_int64(Int64.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_maybe(child_type, child) : self
      __return_value = LibGLib.variant_new_maybe(child_type ? child_type.to_unsafe.as(LibGLib::VariantType*) : nil, child ? child.to_unsafe.as(LibGLib::Variant*) : nil)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_object_path(object_path) : self
      __return_value = LibGLib.variant_new_object_path(object_path.to_unsafe)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_objv(strv, length) : self
      __return_value = LibGLib.variant_new_objv(strv, Int64.new(length))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_signature(signature) : self
      __return_value = LibGLib.variant_new_signature(signature.to_unsafe)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_string(string) : self
      __return_value = LibGLib.variant_new_string(string.to_unsafe)
      cast GLib::Variant.new(__return_value)
    end

    def self.new_strv(strv, length) : self
      __return_value = LibGLib.variant_new_strv(strv, Int64.new(length))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_tuple(children, n_children) : self
      __return_value = LibGLib.variant_new_tuple(children, UInt64.new(n_children))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_uint16(value) : self
      __return_value = LibGLib.variant_new_uint16(UInt16.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_uint32(value) : self
      __return_value = LibGLib.variant_new_uint32(UInt32.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_uint64(value) : self
      __return_value = LibGLib.variant_new_uint64(UInt64.new(value))
      cast GLib::Variant.new(__return_value)
    end

    def self.new_variant(value) : self
      __return_value = LibGLib.variant_new_variant(value.to_unsafe.as(LibGLib::Variant*))
      cast GLib::Variant.new(__return_value)
    end

    def byteswap
      __return_value = LibGLib.variant_byteswap(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def check_format_string(format_string, copy_only)
      __return_value = LibGLib.variant_check_format_string(@pointer.as(LibGLib::Variant*), format_string.to_unsafe, copy_only)
      __return_value
    end

    def classify
      __return_value = LibGLib.variant_classify(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def compare(two)
      __return_value = LibGLib.variant_compare(@pointer.as(LibGLib::Variant*), two.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def dup_bytestring(length)
      __return_value = LibGLib.variant_dup_bytestring(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def dup_bytestring_array(length)
      __return_value = LibGLib.variant_dup_bytestring_array(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def dup_objv(length)
      __return_value = LibGLib.variant_dup_objv(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def dup_string(length)
      __return_value = LibGLib.variant_dup_string(@pointer.as(LibGLib::Variant*), length)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dup_strv(length)
      __return_value = LibGLib.variant_dup_strv(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def equal(two)
      __return_value = LibGLib.variant_equal(@pointer.as(LibGLib::Variant*), two.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def boolean
      __return_value = LibGLib.variant_get_boolean(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def byte
      __return_value = LibGLib.variant_get_byte(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def bytestring
      __return_value = LibGLib.variant_get_bytestring(@pointer.as(LibGLib::Variant*))
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def bytestring_array(length)
      __return_value = LibGLib.variant_get_bytestring_array(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def child_value(index)
      __return_value = LibGLib.variant_get_child_value(@pointer.as(LibGLib::Variant*), UInt64.new(index))
      GLib::Variant.new(__return_value)
    end

    def data
      LibGLib.variant_get_data(@pointer.as(LibGLib::Variant*))
      nil
    end

    def data_as_bytes
      __return_value = LibGLib.variant_get_data_as_bytes(@pointer.as(LibGLib::Variant*))
      GLib::Bytes.new(__return_value)
    end

    def double
      __return_value = LibGLib.variant_get_double(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def handle
      __return_value = LibGLib.variant_get_handle(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def int16
      __return_value = LibGLib.variant_get_int16(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def int32
      __return_value = LibGLib.variant_get_int32(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def int64
      __return_value = LibGLib.variant_get_int64(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def maybe
      __return_value = LibGLib.variant_get_maybe(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value) if __return_value
    end

    def normal_form
      __return_value = LibGLib.variant_get_normal_form(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def objv(length)
      __return_value = LibGLib.variant_get_objv(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def size
      __return_value = LibGLib.variant_get_size(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def string(length)
      __return_value = LibGLib.variant_get_string(@pointer.as(LibGLib::Variant*), length)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def strv(length)
      __return_value = LibGLib.variant_get_strv(@pointer.as(LibGLib::Variant*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def type
      __return_value = LibGLib.variant_get_type(@pointer.as(LibGLib::Variant*))
      GLib::VariantType.new(__return_value)
    end

    def type_string
      __return_value = LibGLib.variant_get_type_string(@pointer.as(LibGLib::Variant*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uint16
      __return_value = LibGLib.variant_get_uint16(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def uint32
      __return_value = LibGLib.variant_get_uint32(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def uint64
      __return_value = LibGLib.variant_get_uint64(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def variant
      __return_value = LibGLib.variant_get_variant(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def hash
      __return_value = LibGLib.variant_hash(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def container?
      __return_value = LibGLib.variant_is_container(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def floating?
      __return_value = LibGLib.variant_is_floating(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def normal_form?
      __return_value = LibGLib.variant_is_normal_form(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def of_type?(type)
      __return_value = LibGLib.variant_is_of_type(@pointer.as(LibGLib::Variant*), type.to_unsafe.as(LibGLib::VariantType*))
      __return_value
    end

    def lookup_value(key, expected_type)
      __return_value = LibGLib.variant_lookup_value(@pointer.as(LibGLib::Variant*), key.to_unsafe, expected_type ? expected_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      GLib::Variant.new(__return_value)
    end

    def n_children
      __return_value = LibGLib.variant_n_children(@pointer.as(LibGLib::Variant*))
      __return_value
    end

    def print(type_annotate)
      __return_value = LibGLib.variant_print(@pointer.as(LibGLib::Variant*), type_annotate)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def ref
      __return_value = LibGLib.variant_ref(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def ref_sink
      __return_value = LibGLib.variant_ref_sink(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def store(data)
      LibGLib.variant_store(@pointer.as(LibGLib::Variant*), data)
      nil
    end

    def take_ref
      __return_value = LibGLib.variant_take_ref(@pointer.as(LibGLib::Variant*))
      GLib::Variant.new(__return_value)
    end

    def unref
      LibGLib.variant_unref(@pointer.as(LibGLib::Variant*))
      nil
    end

    def self.object_path?(string)
      __return_value = LibGLib.variant_is_object_path(string.to_unsafe)
      __return_value
    end

    def self.signature?(string)
      __return_value = LibGLib.variant_is_signature(string.to_unsafe)
      __return_value
    end

    def self.parse(type, text, limit, endptr) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.variant_parse(type ? type.to_unsafe.as(LibGLib::VariantType*) : nil, text.to_unsafe, limit ? limit.to_unsafe : nil, endptr ? endptr.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def self.parse_error_print_context(error, source_str)
      __return_value = LibGLib.variant_parse_error_print_context(error, source_str.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
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

