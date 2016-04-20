module Gst
  class PluginDesc
    include GObject::WrappedType

    @gst_plugin_desc : LibGst::PluginDesc*?
    def initialize(@gst_plugin_desc : LibGst::PluginDesc*)
    end

    def to_unsafe
      @gst_plugin_desc.not_nil!
    end

  end
end

