module Gio
  class IOStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_i_o_stream_private)
    end

    def to_unsafe
      @gio_i_o_stream_private.not_nil!
    end

  end
end

