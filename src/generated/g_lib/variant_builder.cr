module GLib
  class VariantBuilder
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::VariantBuilder*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::VariantBuilder*)
    end

    def self.new(type) : self
      __return_value = LibGLib.variant_builder_new(type.to_unsafe.as(LibGLib::VariantType*))
      cast GLib::VariantBuilder.new(__return_value)
    end

    def add_value(value)
      LibGLib.variant_builder_add_value(@pointer.as(LibGLib::VariantBuilder*), value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def close
      LibGLib.variant_builder_close(@pointer.as(LibGLib::VariantBuilder*))
      nil
    end

    def end
      __return_value = LibGLib.variant_builder_end(@pointer.as(LibGLib::VariantBuilder*))
      GLib::Variant.new(__return_value)
    end

    def open(type)
      LibGLib.variant_builder_open(@pointer.as(LibGLib::VariantBuilder*), type.to_unsafe.as(LibGLib::VariantType*))
      nil
    end

    def ref
      __return_value = LibGLib.variant_builder_ref(@pointer.as(LibGLib::VariantBuilder*))
      GLib::VariantBuilder.new(__return_value)
    end

    def unref
      LibGLib.variant_builder_unref(@pointer.as(LibGLib::VariantBuilder*))
      nil
    end

  end
end

