module Atk
  class KeyEventStruct
    include GObject::WrappedType

    def initialize(@atk_key_event_struct)
    end

    def to_unsafe
      @atk_key_event_struct.not_nil!
    end

  end
end

