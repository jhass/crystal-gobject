module Gst
  class MapInfo
    include GObject::WrappedType

    @gst_map_info : LibGst::MapInfo*?
    def initialize(@gst_map_info : LibGst::MapInfo*)
    end

    def to_unsafe
      @gst_map_info.not_nil!
    end

  end
end

