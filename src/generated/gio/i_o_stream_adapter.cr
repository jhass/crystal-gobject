module Gio
  class IOStreamAdapter
    include GObject::WrappedType

    def initialize(@gio_i_o_stream_adapter)
    end

    def to_unsafe
      @gio_i_o_stream_adapter.not_nil!
    end

  end
end

