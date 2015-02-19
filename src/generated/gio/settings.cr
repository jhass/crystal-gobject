module Gio
  class Settings < GObject::Object
    def initialize @gio_settings
    end

    def to_unsafe
      @gio_settings.not_nil!
    end







    def self.new_internal(schema_id)
      __return_value = LibGio.settings_new(schema_id)
      Gio::Settings.new(__return_value)
    end

    def self.new_full(schema, backend, path)
      __return_value = LibGio.settings_new_full((schema.to_unsafe as LibGio::SettingsSchema*), backend && (backend.to_unsafe as LibGio::SettingsBackend*), path && path)
      Gio::Settings.new(__return_value)
    end

    def self.new_with_backend(schema_id, backend)
      __return_value = LibGio.settings_new_with_backend(schema_id, (backend.to_unsafe as LibGio::SettingsBackend*))
      Gio::Settings.new(__return_value)
    end

    def self.new_with_backend_and_path(schema_id, backend, path)
      __return_value = LibGio.settings_new_with_backend_and_path(schema_id, (backend.to_unsafe as LibGio::SettingsBackend*), path)
      Gio::Settings.new(__return_value)
    end

    def self.new_with_path(schema_id, path)
      __return_value = LibGio.settings_new_with_path(schema_id, path)
      Gio::Settings.new(__return_value)
    end

    def self.list_relocatable_schemas
      __return_value = LibGio.settings_list_relocatable_schemas
      PointerIterator.new(__return_value) {|__item_36| raise "Expected string but got null" unless __item_36; String.new(__item_36) }
    end

    def self.list_schemas
      __return_value = LibGio.settings_list_schemas
      PointerIterator.new(__return_value) {|__item_81| raise "Expected string but got null" unless __item_81; String.new(__item_81) }
    end

    def self.sync
      __return_value = LibGio.settings_sync
      __return_value
    end

    def self.unbind(object, property)
      __return_value = LibGio.settings_unbind(object, property)
      __return_value
    end

    def apply
      __return_value = LibGio.settings_apply((to_unsafe as LibGio::Settings*))
      __return_value
    end

    def bind(key, object, property, flags)
      __return_value = LibGio.settings_bind((to_unsafe as LibGio::Settings*), key, (object.to_unsafe as LibGObject::Object*), property, flags)
      __return_value
    end

    def bind_writable(key, object, property, inverted)
      __return_value = LibGio.settings_bind_writable((to_unsafe as LibGio::Settings*), key, (object.to_unsafe as LibGObject::Object*), property, Bool.cast(inverted))
      __return_value
    end

    def create_action(key)
      __return_value = LibGio.settings_create_action((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def delay
      __return_value = LibGio.settings_delay((to_unsafe as LibGio::Settings*))
      __return_value
    end

    def boolean(key)
      __return_value = LibGio.settings_get_boolean((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def child(name)
      __return_value = LibGio.settings_get_child((to_unsafe as LibGio::Settings*), name)
      Gio::Settings.new(__return_value)
    end

    def default_value(key)
      __return_value = LibGio.settings_get_default_value((to_unsafe as LibGio::Settings*), key)
      GLib::Variant.new(__return_value)
    end

    def double(key)
      __return_value = LibGio.settings_get_double((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def enum(key)
      __return_value = LibGio.settings_get_enum((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def flags(key)
      __return_value = LibGio.settings_get_flags((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def has_unapplied
      __return_value = LibGio.settings_get_has_unapplied((to_unsafe as LibGio::Settings*))
      __return_value
    end

    def int(key)
      __return_value = LibGio.settings_get_int((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def mapped(key, mapping, user_data)
      __return_value = LibGio.settings_get_mapped((to_unsafe as LibGio::Settings*), key, mapping, user_data)
      __return_value
    end

    def range(key)
      __return_value = LibGio.settings_get_range((to_unsafe as LibGio::Settings*), key)
      GLib::Variant.new(__return_value)
    end

    def string(key)
      __return_value = LibGio.settings_get_string((to_unsafe as LibGio::Settings*), key)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def strv(key)
      __return_value = LibGio.settings_get_strv((to_unsafe as LibGio::Settings*), key)
      PointerIterator.new(__return_value) {|__item_53| raise "Expected string but got null" unless __item_53; String.new(__item_53) }
    end

    def uint(key)
      __return_value = LibGio.settings_get_uint((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def user_value(key)
      __return_value = LibGio.settings_get_user_value((to_unsafe as LibGio::Settings*), key)
      GLib::Variant.new(__return_value)
    end

    def value(key)
      __return_value = LibGio.settings_get_value((to_unsafe as LibGio::Settings*), key)
      GLib::Variant.new(__return_value)
    end

    def is_writable(name)
      __return_value = LibGio.settings_is_writable((to_unsafe as LibGio::Settings*), name)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_list_children((to_unsafe as LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item_70| raise "Expected string but got null" unless __item_70; String.new(__item_70) }
    end

    def list_keys
      __return_value = LibGio.settings_list_keys((to_unsafe as LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item_73| raise "Expected string but got null" unless __item_73; String.new(__item_73) }
    end

    def range_check(key, value)
      __return_value = LibGio.settings_range_check((to_unsafe as LibGio::Settings*), key, (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def reset(key)
      __return_value = LibGio.settings_reset((to_unsafe as LibGio::Settings*), key)
      __return_value
    end

    def revert
      __return_value = LibGio.settings_revert((to_unsafe as LibGio::Settings*))
      __return_value
    end

    def set_boolean(key, value)
      __return_value = LibGio.settings_set_boolean((to_unsafe as LibGio::Settings*), key, Bool.cast(value))
      __return_value
    end

    def set_double(key, value)
      __return_value = LibGio.settings_set_double((to_unsafe as LibGio::Settings*), key, Float64.cast(value))
      __return_value
    end

    def set_enum(key, value)
      __return_value = LibGio.settings_set_enum((to_unsafe as LibGio::Settings*), key, Int32.cast(value))
      __return_value
    end

    def set_flags(key, value)
      __return_value = LibGio.settings_set_flags((to_unsafe as LibGio::Settings*), key, UInt32.cast(value))
      __return_value
    end

    def set_int(key, value)
      __return_value = LibGio.settings_set_int((to_unsafe as LibGio::Settings*), key, Int32.cast(value))
      __return_value
    end

    def set_string(key, value)
      __return_value = LibGio.settings_set_string((to_unsafe as LibGio::Settings*), key, value)
      __return_value
    end

    def set_strv(key, value)
      __return_value = LibGio.settings_set_strv((to_unsafe as LibGio::Settings*), key, value && value)
      __return_value
    end

    def set_uint(key, value)
      __return_value = LibGio.settings_set_uint((to_unsafe as LibGio::Settings*), key, UInt32.cast(value))
      __return_value
    end

    def set_value(key, value)
      __return_value = LibGio.settings_set_value((to_unsafe as LibGio::Settings*), key, (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

  end
end

