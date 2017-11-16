module Gst
  class DebugMessage
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DebugMessage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DebugMessage*)
    end

    def get
      __return_value = LibGst.debug_message_get(@pointer.as(LibGst::DebugMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

