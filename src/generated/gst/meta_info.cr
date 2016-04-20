module Gst
  class MetaInfo
    include GObject::WrappedType

    @gst_meta_info : LibGst::MetaInfo*?
    def initialize(@gst_meta_info : LibGst::MetaInfo*)
    end

    def to_unsafe
      @gst_meta_info.not_nil!
    end

  end
end

