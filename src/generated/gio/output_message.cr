module Gio
  class OutputMessage
    include GObject::WrappedType

    @gio_output_message : LibGio::OutputMessage*?
    def initialize(@gio_output_message : LibGio::OutputMessage*)
    end

    def to_unsafe
      @gio_output_message.not_nil!
    end

  end
end

