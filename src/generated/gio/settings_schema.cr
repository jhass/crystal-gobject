module Gio
  class SettingsSchema
    include GObject::WrappedType

    def initialize @gio_settings_schema
    end

    def to_unsafe
      @gio_settings_schema.not_nil!
    end

    def id
      __return_value = LibGio.settings_schema_get_id((to_unsafe as LibGio::SettingsSchema*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def key(name)
      __return_value = LibGio.settings_schema_get_key((to_unsafe as LibGio::SettingsSchema*), name)
      Gio::SettingsSchemaKey.new(__return_value)
    end

    def path
      __return_value = LibGio.settings_schema_get_path((to_unsafe as LibGio::SettingsSchema*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def has_key(name)
      __return_value = LibGio.settings_schema_has_key((to_unsafe as LibGio::SettingsSchema*), name)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_schema_list_children((to_unsafe as LibGio::SettingsSchema*))
      PointerIterator.new(__return_value) {|__item_20| raise "Expected string but got null" unless __item_20; String.new(__item_20) }
    end

    def ref
      __return_value = LibGio.settings_schema_ref((to_unsafe as LibGio::SettingsSchema*))
      Gio::SettingsSchema.new(__return_value)
    end

    def unref
      __return_value = LibGio.settings_schema_unref((to_unsafe as LibGio::SettingsSchema*))
      __return_value
    end

  end
end

