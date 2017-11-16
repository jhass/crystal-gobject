module Gst
  class FlagSet
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::FlagSet*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::FlagSet*)
    end

    def self.register(flags_type)
      __return_value = LibGst.flag_set_register(UInt64.new(flags_type))
      __return_value
    end

  end
end

