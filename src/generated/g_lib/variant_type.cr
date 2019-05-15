module GLib
  class VariantType
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::VariantType*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::VariantType*)
    end

    def self.new(type_string) : self
      __return_value = LibGLib.variant_type_new(type_string.to_unsafe)
      cast GLib::VariantType.new(__return_value)
    end

    def self.new_array(element) : self
      __return_value = LibGLib.variant_type_new_array(element.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantType.new(__return_value)
    end

    def self.new_dict_entry(key, value) : self
      __return_value = LibGLib.variant_type_new_dict_entry(key.to_unsafe.as(LibGLib::VariantType*), value.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantType.new(__return_value)
    end

    def self.new_maybe(element) : self
      __return_value = LibGLib.variant_type_new_maybe(element.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantType.new(__return_value)
    end

    def self.new_tuple(items, length) : self
      __return_value = LibGLib.variant_type_new_tuple(items, Int32.new(length))
      cast GLib::VariantType.new(__return_value)
    end

    def copy
      __return_value = LibGLib.variant_type_copy(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def dup_string
      __return_value = LibGLib.variant_type_dup_string(@pointer.as(LibGLib::VariantType*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def element
      __return_value = LibGLib.variant_type_element(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def equal(type2)
      __return_value = LibGLib.variant_type_equal(@pointer.as(LibGLib::VariantType*), type2.to_unsafe.as(LibGLib::VariantType*))
      __return_value
    end

    def first
      __return_value = LibGLib.variant_type_first(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def free
      LibGLib.variant_type_free(@pointer.as(LibGLib::VariantType*))
      nil
    end

    def string_length
      __return_value = LibGLib.variant_type_get_string_length(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def hash
      __return_value = LibGLib.variant_type_hash(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def array?
      __return_value = LibGLib.variant_type_is_array(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def basic?
      __return_value = LibGLib.variant_type_is_basic(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def container?
      __return_value = LibGLib.variant_type_is_container(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def definite?
      __return_value = LibGLib.variant_type_is_definite(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def dict_entry?
      __return_value = LibGLib.variant_type_is_dict_entry(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def maybe?
      __return_value = LibGLib.variant_type_is_maybe(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def subtype_of?(supertype)
      __return_value = LibGLib.variant_type_is_subtype_of(@pointer.as(LibGLib::VariantType*), supertype.to_unsafe.as(LibGLib::VariantType*))
      __return_value
    end

    def tuple?
      __return_value = LibGLib.variant_type_is_tuple(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def variant?
      __return_value = LibGLib.variant_type_is_variant(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def key
      __return_value = LibGLib.variant_type_key(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def n_items
      __return_value = LibGLib.variant_type_n_items(@pointer.as(LibGLib::VariantType*))
      __return_value
    end

    def next
      __return_value = LibGLib.variant_type_next(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def value
      __return_value = LibGLib.variant_type_value(@pointer.as(LibGLib::VariantType*))
      GLib::VariantType.new(__return_value)
    end

    def self.checked_(arg0)
      __return_value = LibGLib.variant_type_checked_(arg0.to_unsafe)
      GLib::VariantType.new(__return_value)
    end

    def self.string_get_depth_(type_string)
      __return_value = LibGLib.variant_type_string_get_depth_(type_string.to_unsafe)
      __return_value
    end

    def self.string_is_valid(type_string)
      __return_value = LibGLib.variant_type_string_is_valid(type_string.to_unsafe)
      __return_value
    end

    def self.string_scan(string, limit, endptr)
      __return_value = LibGLib.variant_type_string_scan(string.to_unsafe, limit ? limit.to_unsafe : nil, endptr)
      __return_value
    end

  end
end

