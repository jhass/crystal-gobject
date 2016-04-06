module Gst
  class MetaInfo
    include GObject::WrappedType

    def initialize(@gst_meta_info)
    end

    def to_unsafe
      @gst_meta_info.not_nil!
    end

  end
end

