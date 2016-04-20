module Gst
  class MetaTransformCopy
    include GObject::WrappedType

    @gst_meta_transform_copy : LibGst::MetaTransformCopy*?
    def initialize(@gst_meta_transform_copy : LibGst::MetaTransformCopy*)
    end

    def to_unsafe
      @gst_meta_transform_copy.not_nil!
    end

  end
end

