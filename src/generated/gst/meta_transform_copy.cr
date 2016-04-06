module Gst
  class MetaTransformCopy
    include GObject::WrappedType

    def initialize(@gst_meta_transform_copy)
    end

    def to_unsafe
      @gst_meta_transform_copy.not_nil!
    end

  end
end

