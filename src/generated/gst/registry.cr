require "./object"

module Gst
  class Registry < Object
    def initialize @gst_registry
    end

    def to_unsafe
      @gst_registry.not_nil!
    end

    def self.fork_is_enabled
      __return_value = LibGst.registry_fork_is_enabled
      __return_value
    end

    def self.fork_set_enabled(enabled)
      __return_value = LibGst.registry_fork_set_enabled(Bool.new(enabled))
      __return_value
    end

    def self.get
      __return_value = LibGst.registry_get
      Gst::Registry.new(__return_value)
    end

    def add_feature(feature)
      __return_value = LibGst.registry_add_feature((to_unsafe as LibGst::Registry*), (feature.to_unsafe as LibGst::PluginFeature*))
      __return_value
    end

    def add_plugin(plugin)
      __return_value = LibGst.registry_add_plugin((to_unsafe as LibGst::Registry*), (plugin.to_unsafe as LibGst::Plugin*))
      __return_value
    end

    def check_feature_version(feature_name, min_major, min_minor, min_micro)
      __return_value = LibGst.registry_check_feature_version((to_unsafe as LibGst::Registry*), feature_name, UInt32.new(min_major), UInt32.new(min_minor), UInt32.new(min_micro))
      __return_value
    end

    def feature_filter(filter : LibGst::PluginFeatureFilter, first, user_data)
      __return_value = LibGst.registry_feature_filter((to_unsafe as LibGst::Registry*), filter, Bool.new(first), user_data)
      __return_value
    end

    def find_feature(name, type)
      __return_value = LibGst.registry_find_feature((to_unsafe as LibGst::Registry*), name, UInt64.new(type))
      Gst::PluginFeature.new(__return_value) if __return_value
    end

    def find_plugin(name)
      __return_value = LibGst.registry_find_plugin((to_unsafe as LibGst::Registry*), name)
      Gst::Plugin.new(__return_value) if __return_value
    end

    def feature_list(type)
      __return_value = LibGst.registry_get_feature_list((to_unsafe as LibGst::Registry*), UInt64.new(type))
      __return_value
    end

    def feature_list_by_plugin(name)
      __return_value = LibGst.registry_get_feature_list_by_plugin((to_unsafe as LibGst::Registry*), name)
      __return_value
    end

    def feature_list_cookie
      __return_value = LibGst.registry_get_feature_list_cookie((to_unsafe as LibGst::Registry*))
      __return_value
    end

    def plugin_list
      __return_value = LibGst.registry_get_plugin_list((to_unsafe as LibGst::Registry*))
      __return_value
    end

    def lookup(filename)
      __return_value = LibGst.registry_lookup((to_unsafe as LibGst::Registry*), filename)
      Gst::Plugin.new(__return_value) if __return_value
    end

    def lookup_feature(name)
      __return_value = LibGst.registry_lookup_feature((to_unsafe as LibGst::Registry*), name)
      Gst::PluginFeature.new(__return_value)
    end

    def plugin_filter(filter : LibGst::PluginFilter, first, user_data)
      __return_value = LibGst.registry_plugin_filter((to_unsafe as LibGst::Registry*), filter, Bool.new(first), user_data)
      __return_value
    end

    def remove_feature(feature)
      __return_value = LibGst.registry_remove_feature((to_unsafe as LibGst::Registry*), (feature.to_unsafe as LibGst::PluginFeature*))
      __return_value
    end

    def remove_plugin(plugin)
      __return_value = LibGst.registry_remove_plugin((to_unsafe as LibGst::Registry*), (plugin.to_unsafe as LibGst::Plugin*))
      __return_value
    end

    def scan_path(path)
      __return_value = LibGst.registry_scan_path((to_unsafe as LibGst::Registry*), path)
      __return_value
    end

  end
end

