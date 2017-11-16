module Gio
  class Settings < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Settings*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Settings*)
    end

    def backend
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "backend", gvalue)
      Gio::SettingsBackend.cast(gvalue.object)
    end

    def delay_apply
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "delay_apply", gvalue)
      gvalue.boolean
    end

    def has_unapplied
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_unapplied", gvalue)
      gvalue.boolean
    end

    def path
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "path", gvalue)
      gvalue.string
    end

    def schema
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "schema", gvalue)
      gvalue.string
    end

    def schema_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "schema_id", gvalue)
      gvalue.string
    end

    def settings_schema
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "settings_schema", gvalue)
      Gio::SettingsSchema.cast(gvalue.object)
    end

    def self.new(schema_id) : self
      __return_value = LibGio.settings_new(schema_id.to_unsafe)
      cast Gio::Settings.new(__return_value)
    end

    def self.new_full(schema, backend, path) : self
      __return_value = LibGio.settings_new_full(schema.to_unsafe.as(LibGio::SettingsSchema*), backend ? backend.to_unsafe.as(LibGio::SettingsBackend*) : nil, path ? path.to_unsafe : nil)
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
      LibGio.settings_sync
      nil
    end

    def self.unbind(object, property)
      LibGio.settings_unbind(object.to_unsafe.as(LibGObject::Object*), property.to_unsafe)
      nil
    end

    def apply
      LibGio.settings_apply(@pointer.as(LibGio::Settings*))
      nil
    end

    def bind(key, object, property, flags : Gio::SettingsBindFlags)
      LibGio.settings_bind(@pointer.as(LibGio::Settings*), key.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property.to_unsafe, flags)
      nil
    end

    def bind_writable(key, object, property, inverted)
      LibGio.settings_bind_writable(@pointer.as(LibGio::Settings*), key.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property.to_unsafe, inverted)
      nil
    end

    def create_action(key)
      __return_value = LibGio.settings_create_action(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def delay
      LibGio.settings_delay(@pointer.as(LibGio::Settings*))
      nil
    end

    def boolean(key)
      __return_value = LibGio.settings_get_boolean(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def child(name)
      __return_value = LibGio.settings_get_child(@pointer.as(LibGio::Settings*), name.to_unsafe)
      Gio::Settings.new(__return_value)
    end

    def default_value(key)
      __return_value = LibGio.settings_get_default_value(@pointer.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def double(key)
      __return_value = LibGio.settings_get_double(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def enum(key)
      __return_value = LibGio.settings_get_enum(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def flags(key)
      __return_value = LibGio.settings_get_flags(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def has_unapplied
      __return_value = LibGio.settings_get_has_unapplied(@pointer.as(LibGio::Settings*))
      __return_value
    end

    def int(key)
      __return_value = LibGio.settings_get_int(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def int64(key)
      __return_value = LibGio.settings_get_int64(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def mapped(key, mapping, user_data)
      LibGio.settings_get_mapped(@pointer.as(LibGio::Settings*), key.to_unsafe, mapping, user_data ? user_data : nil)
      nil
    end

    def range(key)
      __return_value = LibGio.settings_get_range(@pointer.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def string(key)
      __return_value = LibGio.settings_get_string(@pointer.as(LibGio::Settings*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def strv(key)
      __return_value = LibGio.settings_get_strv(@pointer.as(LibGio::Settings*), key.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def uint(key)
      __return_value = LibGio.settings_get_uint(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def uint64(key)
      __return_value = LibGio.settings_get_uint64(@pointer.as(LibGio::Settings*), key.to_unsafe)
      __return_value
    end

    def user_value(key)
      __return_value = LibGio.settings_get_user_value(@pointer.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def value(key)
      __return_value = LibGio.settings_get_value(@pointer.as(LibGio::Settings*), key.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def writable?(name)
      __return_value = LibGio.settings_is_writable(@pointer.as(LibGio::Settings*), name.to_unsafe)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_list_children(@pointer.as(LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_keys
      __return_value = LibGio.settings_list_keys(@pointer.as(LibGio::Settings*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def range_check(key, value)
      __return_value = LibGio.settings_range_check(@pointer.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def reset(key)
      LibGio.settings_reset(@pointer.as(LibGio::Settings*), key.to_unsafe)
      nil
    end

    def revert
      LibGio.settings_revert(@pointer.as(LibGio::Settings*))
      nil
    end

    def set_boolean(key, value)
      __return_value = LibGio.settings_set_boolean(@pointer.as(LibGio::Settings*), key.to_unsafe, value)
      __return_value
    end

    def set_double(key, value)
      __return_value = LibGio.settings_set_double(@pointer.as(LibGio::Settings*), key.to_unsafe, Float64.new(value))
      __return_value
    end

    def set_enum(key, value)
      __return_value = LibGio.settings_set_enum(@pointer.as(LibGio::Settings*), key.to_unsafe, Int32.new(value))
      __return_value
    end

    def set_flags(key, value)
      __return_value = LibGio.settings_set_flags(@pointer.as(LibGio::Settings*), key.to_unsafe, UInt32.new(value))
      __return_value
    end

    def set_int(key, value)
      __return_value = LibGio.settings_set_int(@pointer.as(LibGio::Settings*), key.to_unsafe, Int32.new(value))
      __return_value
    end

    def set_int64(key, value)
      __return_value = LibGio.settings_set_int64(@pointer.as(LibGio::Settings*), key.to_unsafe, Int64.new(value))
      __return_value
    end

    def set_string(key, value)
      __return_value = LibGio.settings_set_string(@pointer.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe)
      __return_value
    end

    def set_strv(key, value)
      __return_value = LibGio.settings_set_strv(@pointer.as(LibGio::Settings*), key.to_unsafe, value ? value : nil)
      __return_value
    end

    def set_uint(key, value)
      __return_value = LibGio.settings_set_uint(@pointer.as(LibGio::Settings*), key.to_unsafe, UInt32.new(value))
      __return_value
    end

    def set_uint64(key, value)
      __return_value = LibGio.settings_set_uint64(@pointer.as(LibGio::Settings*), key.to_unsafe, UInt64.new(value))
      __return_value
    end

    def set_value(key, value)
      __return_value = LibGio.settings_set_value(@pointer.as(LibGio::Settings*), key.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
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

