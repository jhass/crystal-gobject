module GObject
  class SignalQuery
    include GObject::WrappedType

    @g_object_signal_query : LibGObject::SignalQuery*?
    def initialize(@g_object_signal_query : LibGObject::SignalQuery*)
    end

    def to_unsafe
      @g_object_signal_query.not_nil!
    end

  end
end

