require "./object"

module Gst
  class PluginFeature < Object
    def initialize(@gst_plugin_feature)
    end

    def to_unsafe
      @gst_plugin_feature.not_nil!
    end

    def self.list_copy(list)
      __return_value = LibGst.plugin_feature_list_copy(list)
      __return_value
    end

    def self.list_debug(list)
      __return_value = LibGst.plugin_feature_list_debug(list)
      __return_value
    end

    def self.list_free(list)
      __return_value = LibGst.plugin_feature_list_free(list)
      __return_value
    end

    def self.rank_compare_func(p1, p2)
      __return_value = LibGst.plugin_feature_rank_compare_func(p1, p2)
      __return_value
    end

    def check_version(min_major, min_minor, min_micro)
      __return_value = LibGst.plugin_feature_check_version((to_unsafe as LibGst::PluginFeature*), UInt32.new(min_major), UInt32.new(min_minor), UInt32.new(min_micro))
      __return_value
    end

    def plugin
      __return_value = LibGst.plugin_feature_get_plugin((to_unsafe as LibGst::PluginFeature*))
      Gst::Plugin.new(__return_value) if __return_value
    end

    def plugin_name
      __return_value = LibGst.plugin_feature_get_plugin_name((to_unsafe as LibGst::PluginFeature*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def rank
      __return_value = LibGst.plugin_feature_get_rank((to_unsafe as LibGst::PluginFeature*))
      __return_value
    end

    def load
      __return_value = LibGst.plugin_feature_load((to_unsafe as LibGst::PluginFeature*))
      Gst::PluginFeature.new(__return_value) if __return_value
    end

    def rank=(rank)
      __return_value = LibGst.plugin_feature_set_rank((to_unsafe as LibGst::PluginFeature*), UInt32.new(rank))
      __return_value
    end

  end
end

