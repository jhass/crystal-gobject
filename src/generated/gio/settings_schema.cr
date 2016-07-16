module Gio
  class SettingsSchema
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SettingsSchema*))
    end

    @gio_settings_schema : LibGio::SettingsSchema*?
    def initialize(@gio_settings_schema : LibGio::SettingsSchema*)
    end

    def to_unsafe
      @gio_settings_schema.not_nil!
    end

    def id
      __return_value = LibGio.settings_schema_get_id(to_unsafe.as(LibGio::SettingsSchema*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def key(name)
      __return_value = LibGio.settings_schema_get_key(to_unsafe.as(LibGio::SettingsSchema*), name.to_unsafe)
      Gio::SettingsSchemaKey.new(__return_value)
    end

    def path
      __return_value = LibGio.settings_schema_get_path(to_unsafe.as(LibGio::SettingsSchema*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_key(name)
      __return_value = LibGio.settings_schema_has_key(to_unsafe.as(LibGio::SettingsSchema*), name.to_unsafe)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_schema_list_children(to_unsafe.as(LibGio::SettingsSchema*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_keys
      __return_value = LibGio.settings_schema_list_keys(to_unsafe.as(LibGio::SettingsSchema*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def ref
      __return_value = LibGio.settings_schema_ref(to_unsafe.as(LibGio::SettingsSchema*))
      Gio::SettingsSchema.new(__return_value)
    end

    def unref
      __return_value = LibGio.settings_schema_unref(to_unsafe.as(LibGio::SettingsSchema*))
      __return_value
    end

  end
end

