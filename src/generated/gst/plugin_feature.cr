require "./object"

module Gst
  class PluginFeature < Object
    @pointer : Void*
    def initialize(pointer : LibGst::PluginFeature*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::PluginFeature*)
    end

    def self.list_copy(list)
      __return_value = LibGst.plugin_feature_list_copy(list)
      GLib::ListIterator(Gst::PluginFeature, LibGst::PluginFeature**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.list_debug(list)
      LibGst.plugin_feature_list_debug(list)
      nil
    end

    def self.list_free(list)
      LibGst.plugin_feature_list_free(list)
      nil
    end

    def self.rank_compare_func(p1, p2)
      __return_value = LibGst.plugin_feature_rank_compare_func(p1 ? p1 : nil, p2 ? p2 : nil)
      __return_value
    end

    def check_version(min_major, min_minor, min_micro)
      __return_value = LibGst.plugin_feature_check_version(@pointer.as(LibGst::PluginFeature*), UInt32.new(min_major), UInt32.new(min_minor), UInt32.new(min_micro))
      __return_value
    end

    def plugin
      __return_value = LibGst.plugin_feature_get_plugin(@pointer.as(LibGst::PluginFeature*))
      Gst::Plugin.new(__return_value) if __return_value
    end

    def plugin_name
      __return_value = LibGst.plugin_feature_get_plugin_name(@pointer.as(LibGst::PluginFeature*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def rank
      __return_value = LibGst.plugin_feature_get_rank(@pointer.as(LibGst::PluginFeature*))
      __return_value
    end

    def load
      __return_value = LibGst.plugin_feature_load(@pointer.as(LibGst::PluginFeature*))
      Gst::PluginFeature.new(__return_value) if __return_value
    end

    def rank=(rank)
      LibGst.plugin_feature_set_rank(@pointer.as(LibGst::PluginFeature*), UInt32.new(rank))
      nil
    end

  end
end

