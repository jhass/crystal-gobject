module Gst
  class MapInfo
    include GObject::WrappedType

    def initialize(@gst_map_info)
    end

    def to_unsafe
      @gst_map_info.not_nil!
    end

  end
end

