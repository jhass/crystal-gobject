module Gio
  class InputMessage
    include GObject::WrappedType

    @gio_input_message : LibGio::InputMessage*?
    def initialize(@gio_input_message : LibGio::InputMessage*)
    end

    def to_unsafe
      @gio_input_message.not_nil!
    end

  end
end

