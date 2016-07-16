module GObject
  class SignalInvocationHint
    include GObject::WrappedType

    def self.new(signal_id : UInt32|Nil = nil, detail : UInt32|Nil = nil, run_type : GObject::SignalFlags|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(12, 0u8)
      new(ptr.as(LibGObject::SignalInvocationHint*)).tap do |object|
        object.signal_id = signal_id unless signal_id.nil?
        object.detail = detail unless detail.nil?
        object.run_type = run_type unless run_type.nil?
      end
    end

    @g_object_signal_invocation_hint : LibGObject::SignalInvocationHint*?
    def initialize(@g_object_signal_invocation_hint : LibGObject::SignalInvocationHint*)
    end

    def to_unsafe
      @g_object_signal_invocation_hint.not_nil!.as(Void*)
    end

    def signal_id
      (to_unsafe.value.signal_id)
    end

    def signal_id=(value : UInt32)
      to_unsafe.value.signal_id = UInt32.new(value)
    end

    def detail
      (to_unsafe.value.detail)
    end

    def detail=(value : UInt32)
      to_unsafe.value.detail = UInt32.new(value)
    end

    def run_type
      (to_unsafe.value.run_type)
    end

    def run_type=(value : GObject::SignalFlags)
      to_unsafe.value.run_type = value
    end

  end
end

