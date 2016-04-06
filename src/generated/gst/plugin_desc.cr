module Gst
  class PluginDesc
    include GObject::WrappedType

    def initialize(@gst_plugin_desc)
    end

    def to_unsafe
      @gst_plugin_desc.not_nil!
    end

  end
end

