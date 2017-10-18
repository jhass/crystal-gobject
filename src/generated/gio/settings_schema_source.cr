module Gio
  class SettingsSchemaSource
    include GObject::WrappedType

    @gio_settings_schema_source : LibGio::SettingsSchemaSource*?
    def initialize(@gio_settings_schema_source : LibGio::SettingsSchemaSource*)
    end

    def to_unsafe
      @gio_settings_schema_source.not_nil!
    end

    def self.new_from_directory(directory, parent, trusted) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.settings_schema_source_new_from_directory(directory.to_unsafe, parent ? parent.to_unsafe.as(LibGio::SettingsSchemaSource*) : nil, trusted, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::SettingsSchemaSource.new(__return_value)
    end

    def list_schemas(recursive, non_relocatable, relocatable)
      LibGio.settings_schema_source_list_schemas(to_unsafe.as(LibGio::SettingsSchemaSource*), recursive, non_relocatable, relocatable)
      nil
    end

    def lookup(schema_id, recursive)
      __return_value = LibGio.settings_schema_source_lookup(to_unsafe.as(LibGio::SettingsSchemaSource*), schema_id.to_unsafe, recursive)
      Gio::SettingsSchema.new(__return_value) if __return_value
    end

    def ref
      __return_value = LibGio.settings_schema_source_ref(to_unsafe.as(LibGio::SettingsSchemaSource*))
      Gio::SettingsSchemaSource.new(__return_value)
    end

    def unref
      LibGio.settings_schema_source_unref(to_unsafe.as(LibGio::SettingsSchemaSource*))
      nil
    end

    def self.default
      __return_value = LibGio.settings_schema_source_get_default
      Gio::SettingsSchemaSource.new(__return_value)
    end

  end
end

