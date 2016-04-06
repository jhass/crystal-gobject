module Gio
  class SettingsSchemaKey
    include GObject::WrappedType

    def initialize(@gio_settings_schema_key)
    end

    def to_unsafe
      @gio_settings_schema_key.not_nil!
    end

    def default_value
      __return_value = LibGio.settings_schema_key_get_default_value((to_unsafe as LibGio::SettingsSchemaKey*))
      GLib::Variant.new(__return_value)
    end

    def description
      __return_value = LibGio.settings_schema_key_get_description((to_unsafe as LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name
      __return_value = LibGio.settings_schema_key_get_name((to_unsafe as LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def range
      __return_value = LibGio.settings_schema_key_get_range((to_unsafe as LibGio::SettingsSchemaKey*))
      GLib::Variant.new(__return_value)
    end

    def summary
      __return_value = LibGio.settings_schema_key_get_summary((to_unsafe as LibGio::SettingsSchemaKey*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def value_type
      __return_value = LibGio.settings_schema_key_get_value_type((to_unsafe as LibGio::SettingsSchemaKey*))
      GLib::VariantType.new(__return_value)
    end

    def range_check(value)
      __return_value = LibGio.settings_schema_key_range_check((to_unsafe as LibGio::SettingsSchemaKey*), (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def ref
      __return_value = LibGio.settings_schema_key_ref((to_unsafe as LibGio::SettingsSchemaKey*))
      Gio::SettingsSchemaKey.new(__return_value)
    end

    def unref
      __return_value = LibGio.settings_schema_key_unref((to_unsafe as LibGio::SettingsSchemaKey*))
      __return_value
    end

  end
end

