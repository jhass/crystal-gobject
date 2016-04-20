module Gst
  class ProtectionMeta
    include GObject::WrappedType

    @gst_protection_meta : LibGst::ProtectionMeta*?
    def initialize(@gst_protection_meta : LibGst::ProtectionMeta*)
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

