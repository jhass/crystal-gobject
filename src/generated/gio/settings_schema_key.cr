module Gio
  class SettingsSchemaKey
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SettingsSchemaKey*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SettingsSchemaKey*)
    end

    def default_value
      __return_value = LibGio.settings_schema_key_get_default_value(@pointer.as(LibGio::SettingsSchemaKey*))
      GLib::Variant.new(__return_value)
    end

    def description
      __return_value = LibGio.settings_schema_key_get_description(@pointer.as(LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGio.settings_schema_key_get_name(@pointer.as(LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def range
      __return_value = LibGio.settings_schema_key_get_range(@pointer.as(LibGio::SettingsSchemaKey*))
      GLib::Variant.new(__return_value)
    end

    def summary
      __return_value = LibGio.settings_schema_key_get_summary(@pointer.as(LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def value_type
      __return_value = LibGio.settings_schema_key_get_value_type(@pointer.as(LibGio::SettingsSchemaKey*))
      GLib::VariantType.new(__return_value)
    end

    def range_check(value)
      __return_value = LibGio.settings_schema_key_range_check(@pointer.as(LibGio::SettingsSchemaKey*), value.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def ref
      __return_value = LibGio.settings_schema_key_ref(@pointer.as(LibGio::SettingsSchemaKey*))
      Gio::SettingsSchemaKey.new(__return_value)
    end

    def unref
      LibGio.settings_schema_key_unref(@pointer.as(LibGio::SettingsSchemaKey*))
      nil
    end

  end
end

