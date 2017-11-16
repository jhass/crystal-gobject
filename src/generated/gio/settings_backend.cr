module Gio
  class SettingsBackend < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SettingsBackend*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SettingsBackend*)
    end

    def self.flatten_tree(tree, path, keys, values)
      LibGio.settings_backend_flatten_tree(tree.to_unsafe.as(LibGLib::Tree*), path, keys, values)
      nil
    end

    def self.default
      __return_value = LibGio.settings_backend_get_default
      Gio::SettingsBackend.new(__return_value)
    end

    def changed(key, origin_tag)
      LibGio.settings_backend_changed(@pointer.as(LibGio::SettingsBackend*), key.to_unsafe, origin_tag ? origin_tag : nil)
      nil
    end

    def changed_tree(tree, origin_tag)
      LibGio.settings_backend_changed_tree(@pointer.as(LibGio::SettingsBackend*), tree.to_unsafe.as(LibGLib::Tree*), origin_tag ? origin_tag : nil)
      nil
    end

    def keys_changed(path, items, origin_tag)
      LibGio.settings_backend_keys_changed(@pointer.as(LibGio::SettingsBackend*), path.to_unsafe, items, origin_tag ? origin_tag : nil)
      nil
    end

    def path_changed(path, origin_tag)
      LibGio.settings_backend_path_changed(@pointer.as(LibGio::SettingsBackend*), path.to_unsafe, origin_tag ? origin_tag : nil)
      nil
    end

    def path_writable_changed(path)
      LibGio.settings_backend_path_writable_changed(@pointer.as(LibGio::SettingsBackend*), path.to_unsafe)
      nil
    end

    def writable_changed(key)
      LibGio.settings_backend_writable_changed(@pointer.as(LibGio::SettingsBackend*), key.to_unsafe)
      nil
    end

  end
end

