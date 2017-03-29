module Gio
  class InputStreamPrivate
    include GObject::WrappedType

    @gio_input_stream_private : LibGio::InputStreamPrivate*?
    def initialize(@gio_input_stream_private : LibGio::InputStreamPrivate*)
    end

    def to_unsafe
      @gio_input_stream_private.not_nil!
    end

  end
end

