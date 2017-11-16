module GLib
  class VariantDict
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::VariantDict*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::VariantDict*)
    end

    def self.new(from_asv) : self
      __return_value = LibGLib.variant_dict_new(from_asv ? from_asv.to_unsafe.as(LibGLib::Variant*) : nil)
      cast GLib::VariantDict.new(__return_value)
    end

    def clear
      LibGLib.variant_dict_clear(@pointer.as(LibGLib::VariantDict*))
      nil
    end

    def contains(key)
      __return_value = LibGLib.variant_dict_contains(@pointer.as(LibGLib::VariantDict*), key.to_unsafe)
      __return_value
    end

    def end
      __return_value = LibGLib.variant_dict_end(@pointer.as(LibGLib::VariantDict*))
      GLib::Variant.new(__return_value)
    end

    def insert_value(key, value)
      LibGLib.variant_dict_insert_value(@pointer.as(LibGLib::VariantDict*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def lookup_value(key, expected_type)
      __return_value = LibGLib.variant_dict_lookup_value(@pointer.as(LibGLib::VariantDict*), key.to_unsafe, expected_type ? expected_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      GLib::Variant.new(__return_value)
    end

    def ref
      __return_value = LibGLib.variant_dict_ref(@pointer.as(LibGLib::VariantDict*))
      GLib::VariantDict.new(__return_value)
    end

    def remove(key)
      __return_value = LibGLib.variant_dict_remove(@pointer.as(LibGLib::VariantDict*), key.to_unsafe)
      __return_value
    end

    def unref
      LibGLib.variant_dict_unref(@pointer.as(LibGLib::VariantDict*))
      nil
    end

  end
end

