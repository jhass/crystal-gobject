module GLib
  class VariantBuilder
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(128, 0u8)
      super(ptr.as(LibGLib::VariantBuilder*))
    end

    @g_lib_variant_builder : LibGLib::VariantBuilder*?
    def initialize(@g_lib_variant_builder : LibGLib::VariantBuilder*)
    end

    def to_unsafe
      @g_lib_variant_builder.not_nil!.as(Void*)
    end

    def self.new(type) : self
      __return_value = LibGLib.variant_builder_new(type.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantBuilder.new(__return_value)
    end

    def add_value(value)
      __return_value = LibGLib.variant_builder_add_value(to_unsafe.as(LibGLib::VariantBuilder*), value.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def close
      __return_value = LibGLib.variant_builder_close(to_unsafe.as(LibGLib::VariantBuilder*))
      __return_value
    end

    def end
      __return_value = LibGLib.variant_builder_end(to_unsafe.as(LibGLib::VariantBuilder*))
      GLib::Variant.new(__return_value)
    end

    def open(type)
      __return_value = LibGLib.variant_builder_open(to_unsafe.as(LibGLib::VariantBuilder*), type.to_unsafe.as(LibGLib::VariantType*))
      __return_value
    end

    def ref
      __return_value = LibGLib.variant_builder_ref(to_unsafe.as(LibGLib::VariantBuilder*))
      GLib::VariantBuilder.new(__return_value)
    end

    def unref
      __return_value = LibGLib.variant_builder_unref(to_unsafe.as(LibGLib::VariantBuilder*))
      __return_value
    end

    def x
      PointerIterator.new((to_unsafe.as(LibGLib::VariantBuilder*).value.x)) {|__item| __item }
    end

  end
end

