module Gio
  class Settings < GObject::Object
    @gio_settings : LibGio::Settings*?
    def initialize(@gio_settings : LibGio::Settings*)
    end

    def to_unsafe
      @gio_settings.not_nil!.as(Void*)
    end







    def self.new(schema_id) : self
      __return_value = LibGio.settings_new(schema_id.to_unsafe)
      cast Gio::Settings.new(__return_value)
    end

    def self.new_full(schema, backend, path) : self
      __return_value = LibGio.settings_new_full(schema.to_unsafe.as(LibGio::SettingsSchema*), backend && backend.to_unsafe.as(LibGio::SettingsBackend*), path && path.to_unsafe)
      cast Gio::Settings.new(__return_value)
    end

    def self.new_with_backend(schema_id, backend) : self
      __return_value = LibGio.settings_new_with_backend(schema_id.to_unsafe, backend.to_unsafe.as(LibGio::SettingsBackend*))
      cast Gio::Settings.new(__return_value)
    end

    def self.new_with_backend_and_path(schema_id, backend, path) : self
      __return_value = LibGio.settings_new_with_backend_and_path(schema_id.to_unsafe, backend.to_unsafe.as(LibGio::SettingsBackend*), path.to_unsafe)
      cast Gio::Settings.new(__return_value)
    end

    def self.new_with_path(schema_id, path) : self
      __return_value = LibGio.settings_new_with_path(schema_id.to_unsafe, path.to_unsafe)
      cast Gio::Settings.new(__return_value)
    end

    def self.list_relocatable_schemas
      __return_value = LibGio.settings_list_relocatable_schemas
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def self.list_schemas
      __return_value = LibGio.settings_list_schemas
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def self.sync
      __return_value = LibGio.settings_sync
      __return_value
    end

    def self.unbind(object, property)
      __return_value = LibGio.settings_unbind(object.to_unsafe.as(LibGObject::Object*), property.to_unsafe)
      __return_value
    end

    def apply
      __return_value = LibGio.settings_apply(to_unsafe.as(LibGio::Settings*))
      __return_value
    end

    def bind(key, object, property, flags : Gio::SettingsBindFlags)
      __return_value = LibGio.settings_bind(to_unsafe.as(LibGio::Settings*), key.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property.to_unsafe, flags)
      __return_value
    end

    def bind_writable(key, object, property, inverted)
      __return_value = LibGio.settings_bind_writable(to_unsafe.as(LibGio::Settings*), key.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property.to_unsafe, inverted)
      __return_value
    end

    def create_action(key)
      __return_value = LibGio.settings_create_action(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def delay
      __return_value = LibGio.settings_delay(to_unsafe.as(LibGio::Settings*))
      __return_value
    end

    def boolean(key)
      __return_value = LibGio.settings_get_boolean(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def child(name)
      __return_value = LibGio.settings_get_child(to_unsafe.as(LibGio::Settings*), name.to_unsafe)
      Gio::Settings.new(__return_value)
    end

    def default_value(key)
      __return_value = LibGio.settings_get_default_value(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def double(key)
      __return_value = LibGio.settings_get_double(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def enum(key)
      __return_value = LibGio.settings_get_enum(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def flags(key)
      __return_value = LibGio.settings_get_flags(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def has_unapplied
      __return_value = LibGio.settings_get_has_unapplied(to_unsafe.as(LibGio::Settings*))
      __return_value
    end

    def int(key)
      __return_value = LibGio.settings_get_int(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def mapped(key, mapping, user_data)
      __return_value = LibGio.settings_get_mapped(to_unsafe.as(LibGio::Settings*), key.to_unsafe, mapping, user_data && user_data)
      __return_value if __return_value
    end

    def range(key)
      __return_value = LibGio.settings_get_range(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def string(key)
      __return_value = LibGio.settings_get_string(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def strv(key)
      __return_value = LibGio.settings_get_strv(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def uint(key)
      __return_value = LibGio.settings_get_uint(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def user_value(key)
      __return_value = LibGio.settings_get_user_value(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def value(key)
      __return_value = LibGio.settings_get_value(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def writable?(name)
      __return_value = LibGio.settings_is_writable(to_unsafe.as(LibGio::Settings*), name.to_unsafe)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_list_children(to_unsafe.as(LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_keys
      __return_value = LibGio.settings_list_keys(to_unsafe.as(LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def range_check(key, value)
      __return_value = LibGio.settings_range_check(to_unsafe.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def reset(key)
      __return_value = LibGio.settings_reset(to_unsafe.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def revert
      __return_value = LibGio.settings_revert(to_unsafe.as(LibGio::Settings*))
      __return_value
    end

    def set_boolean(key, value)
      __return_value = LibGio.settings_set_boolean(to_unsafe.as(LibGio::Settings*), key.to_unsafe, value)
      __return_value
    end

    def set_double(key, value)
      __return_value = LibGio.settings_set_double(to_unsafe.as(LibGio::Settings*), key.to_unsafe, Float64.new(value))
      __return_value
    end

    def set_enum(key, value)
      __return_value = LibGio.settings_set_enum(to_unsafe.as(LibGio::Settings*), key.to_unsafe, Int32.new(value))
      __return_value
    end

    def set_flags(key, value)
      __return_value = LibGio.settings_set_flags(to_unsafe.as(LibGio::Settings*), key.to_unsafe, UInt32.new(value))
      __return_value
    end

    def set_int(key, value)
      __return_value = LibGio.settings_set_int(to_unsafe.as(LibGio::Settings*), key.to_unsafe, Int32.new(value))
      __return_value
    end

    def set_string(key, value)
      __return_value = LibGio.settings_set_string(to_unsafe.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe)
      __return_value
    end

    def set_strv(key, value)
      __return_value = LibGio.settings_set_strv(to_unsafe.as(LibGio::Settings*), key.to_unsafe, value && value)
      __return_value
    end

    def set_uint(key, value)
      __return_value = LibGio.settings_set_uint(to_unsafe.as(LibGio::Settings*), key.to_unsafe, UInt32.new(value))
      __return_value
    end

    def set_value(key, value)
      __return_value = LibGio.settings_set_value(to_unsafe.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    alias ChangeEventSignal = Settings, Array(UInt32), Int32 -> Bool
    def on_change_event(&__block : ChangeEventSignal)
      __callback = ->(_arg0 : LibGio::Settings*, _arg1 : LibGio::UInt32**, _arg2 : LibGio::Int32*) {
       __return_value = __block.call(Settings.new(_arg0), PointerIterator.new(_arg1) {|__item| __item }, _arg2)
       __return_value
      }
      connect("change-event", __callback)
    end

    alias ChangedSignal = Settings, String ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::Settings*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(Settings.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("changed", __callback)
    end

    alias WritableChangeEventSignal = Settings, UInt32 -> Bool
    def on_writable_change_event(&__block : WritableChangeEventSignal)
      __callback = ->(_arg0 : LibGio::Settings*, _arg1 : LibGio::UInt32*) {
       __return_value = __block.call(Settings.new(_arg0), _arg1)
       __return_value
      }
      connect("writable-change-event", __callback)
    end

    alias WritableChangedSignal = Settings, String ->
    def on_writable_changed(&__block : WritableChangedSignal)
      __callback = ->(_arg0 : LibGio::Settings*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(Settings.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("writable-changed", __callback)
    end

  end
end

