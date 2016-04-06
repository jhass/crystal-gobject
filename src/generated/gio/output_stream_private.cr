module Gio
  class OutputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_output_stream_private)
    end

    def to_unsafe
      @gio_output_stream_private.not_nil!
    end

  end
end

