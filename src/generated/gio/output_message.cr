module Gio
  class OutputMessage
    include GObject::WrappedType

    def initialize(@gio_output_message)
    end

    def to_unsafe
      @gio_output_message.not_nil!
    end

  end
end

