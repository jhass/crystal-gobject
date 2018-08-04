require "./plugin_feature"

module Gst
  class TracerFactory < PluginFeature
    @pointer : Void*
    def initialize(pointer : LibGst::TracerFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TracerFactory*)
    end

    def self.list
      __return_value = LibGst.tracer_factory_get_list
      GLib::ListIterator(Gst::TracerFactory, LibGst::TracerFactory**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def tracer_type
      __return_value = LibGst.tracer_factory_get_tracer_type(@pointer.as(LibGst::TracerFactory*))
      __return_value
    end

  end
end

