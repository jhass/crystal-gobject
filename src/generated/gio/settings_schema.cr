module Gio
  class SettingsSchema
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SettingsSchema*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SettingsSchema*)
    end

    def id
      __return_value = LibGio.settings_schema_get_id(@pointer.as(LibGio::SettingsSchema*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def key(name)
      __return_value = LibGio.settings_schema_get_key(@pointer.as(LibGio::SettingsSchema*), name.to_unsafe)
      Gio::SettingsSchemaKey.new(__return_value)
    end

    def path
      __return_value = LibGio.settings_schema_get_path(@pointer.as(LibGio::SettingsSchema*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_key(name)
      __return_value = LibGio.settings_schema_has_key(@pointer.as(LibGio::SettingsSchema*), name.to_unsafe)
      __return_value
    end

    def list_children
      __return_value = LibGio.settings_schema_list_children(@pointer.as(LibGio::SettingsSchema*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_keys
      __return_value = LibGio.settings_schema_list_keys(@pointer.as(LibGio::SettingsSchema*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def ref
      __return_value = LibGio.settings_schema_ref(@pointer.as(LibGio::SettingsSchema*))
      Gio::SettingsSchema.new(__return_value)
    end

    def unref
      LibGio.settings_schema_unref(@pointer.as(LibGio::SettingsSchema*))
      nil
    end

  end
end

