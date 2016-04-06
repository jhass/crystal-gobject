module Gio
  class SettingsSchemaSource
    include GObject::WrappedType

    def initialize(@gio_settings_schema_source)
    end

    def to_unsafe
      @gio_settings_schema_source.not_nil!
    end

    def self.new_from_directory(directory, parent, trusted)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.settings_schema_source_new_from_directory(directory, parent && (parent.to_unsafe as LibGio::SettingsSchemaSource*), trusted, pointerof(__error))
      GLib::Error.assert __error
      Gio::SettingsSchemaSource.new(__return_value)
    end

    def list_schemas(recursive, non_relocatable, relocatable)
      __return_value = LibGio.settings_schema_source_list_schemas((to_unsafe as LibGio::SettingsSchemaSource*), recursive, non_relocatable, relocatable)
      __return_value
    end

    def lookup(schema_id, recursive)
      __return_value = LibGio.settings_schema_source_lookup((to_unsafe as LibGio::SettingsSchemaSource*), schema_id, recursive)
      Gio::SettingsSchema.new(__return_value) if __return_value
    end

    def ref
      __return_value = LibGio.settings_schema_source_ref((to_unsafe as LibGio::SettingsSchemaSource*))
      Gio::SettingsSchemaSource.new(__return_value)
    end

    def unref
      __return_value = LibGio.settings_schema_source_unref((to_unsafe as LibGio::SettingsSchemaSource*))
      __return_value
    end

    def self.default
      __return_value = LibGio.settings_schema_source_get_default
      Gio::SettingsSchemaSource.new(__return_value)
    end

  end
end

