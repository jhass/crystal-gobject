module Gio
  class InputMessage
    include GObject::WrappedType

    def initialize(@gio_input_message)
    end

    def to_unsafe
      @gio_input_message.not_nil!
    end

  end
end

