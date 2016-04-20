module Atk
  class KeyEventStruct
    include GObject::WrappedType

    @atk_key_event_struct : LibAtk::KeyEventStruct*?
    def initialize(@atk_key_event_struct : LibAtk::KeyEventStruct*)
    end

    def to_unsafe
      @atk_key_event_struct.not_nil!
    end

  end
end

