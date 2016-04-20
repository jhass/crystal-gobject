module GObject
  class SignalInvocationHint
    include GObject::WrappedType

    @g_object_signal_invocation_hint : LibGObject::SignalInvocationHint*?
    def initialize(@g_object_signal_invocation_hint : LibGObject::SignalInvocationHint*)
    end

    def to_unsafe
      @g_object_signal_invocation_hint.not_nil!
    end

  end
end

