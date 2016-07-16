module Gst
  class DebugMessage
    include GObject::WrappedType

    @gst_debug_message : LibGst::DebugMessage*?
    def initialize(@gst_debug_message : LibGst::DebugMessage*)
    end

    def to_unsafe
      @gst_debug_message.not_nil!.as(Void*)
    end

    def get
      __return_value = LibGst.debug_message_get(to_unsafe.as(LibGst::DebugMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

