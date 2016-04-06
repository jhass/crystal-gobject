module GObject
  class SignalQuery
    include GObject::WrappedType

    def initialize(@g_object_signal_query)
    end

    def to_unsafe
      @g_object_signal_query.not_nil!
    end

  end
end

