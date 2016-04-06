module Gst
  class ProtectionMeta
    include GObject::WrappedType

    def initialize(@gst_protection_meta)
    end

    def to_unsafe
      @gst_protection_meta.not_nil!
    end

    def self.info
      __return_value = LibGst.protection_meta_get_info
      Gst::MetaInfo.new(__return_value)
    end

  end
end

