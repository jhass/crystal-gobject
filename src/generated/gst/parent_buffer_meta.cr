module Gst
  class ParentBufferMeta
    include GObject::WrappedType

    @gst_parent_buffer_meta : LibGst::ParentBufferMeta*?
    def initialize(@gst_parent_buffer_meta : LibGst::ParentBufferMeta*)
    end

    def to_unsafe
      @gst_parent_buffer_meta.not_nil!
    end

    def self.info
      __return_value = LibGst.parent_buffer_meta_get_info
      Gst::MetaInfo.new(__return_value)
    end

  end
end

