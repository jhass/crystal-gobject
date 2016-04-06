module GObject
  class SignalInvocationHint
    include GObject::WrappedType

    def initialize(@g_object_signal_invocation_hint)
    end

    def to_unsafe
      @g_object_signal_invocation_hint.not_nil!
    end

  end
end

