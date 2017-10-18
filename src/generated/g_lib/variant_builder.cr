module GLib
  class VariantBuilder
    include GObject::WrappedType

    @g_lib_variant_builder : LibGLib::VariantBuilder*?
    def initialize(@g_lib_variant_builder : LibGLib::VariantBuilder*)
    end

    def to_unsafe
      @g_lib_variant_builder.not_nil!
    end

    def self.new(type) : self
      __return_value = LibGLib.variant_builder_new(type.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantBuilder.new(__return_value)
    end

    def add_value(value)
      LibGLib.variant_builder_add_value(to_unsafe.as(LibGLib::VariantBuilder*), value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def close
      LibGLib.variant_builder_close(to_unsafe.as(LibGLib::VariantBuilder*))
      nil
    end

    def end
      __return_value = LibGLib.variant_builder_end(to_unsafe.as(LibGLib::VariantBuilder*))
      GLib::Variant.new(__return_value)
    end

    def open(type)
      LibGLib.variant_builder_open(to_unsafe.as(LibGLib::VariantBuilder*), type.to_unsafe.as(LibGLib::VariantType*))
      nil
    end

    def ref
      __return_value = LibGLib.variant_builder_ref(to_unsafe.as(LibGLib::VariantBuilder*))
      GLib::VariantBuilder.new(__return_value)
    end

    def unref
      LibGLib.variant_builder_unref(to_unsafe.as(LibGLib::VariantBuilder*))
      nil
    end

  end
end

