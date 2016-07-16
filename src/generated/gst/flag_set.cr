module Gst
  class FlagSet
    include GObject::WrappedType

    @gst_flag_set : LibGst::FlagSet*?
    def initialize(@gst_flag_set : LibGst::FlagSet*)
    end

    def to_unsafe
      @gst_flag_set.not_nil!.as(Void*)
    end

    def self.register(flags_type)
      __return_value = LibGst.flag_set_register(UInt64.new(flags_type))
      __return_value
    end

  end
end

