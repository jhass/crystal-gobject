module Gst
  class FlagSet
    include GObject::WrappedType

    def initialize(@gst_flag_set)
    end

    def to_unsafe
      @gst_flag_set.not_nil!
    end

    def self.register(flags_type)
      __return_value = LibGst.flag_set_register(UInt64.new(flags_type))
      __return_value
    end

  end
end

