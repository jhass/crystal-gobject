module Gio
  class IOStreamPrivate
    include GObject::WrappedType

    @gio_i_o_stream_private : LibGio::IOStreamPrivate*?
    def initialize(@gio_i_o_stream_private : LibGio::IOStreamPrivate*)
    end

    def to_unsafe
      @gio_i_o_stream_private.not_nil!.as(Void*)
    end

  end
end

