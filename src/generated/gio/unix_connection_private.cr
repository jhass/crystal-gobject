module Gio
  class UnixConnectionPrivate
    include GObject::WrappedType

    @gio_unix_connection_private : LibGio::UnixConnectionPrivate*?
    def initialize(@gio_unix_connection_private : LibGio::UnixConnectionPrivate*)
    end

    def to_unsafe
      @gio_unix_connection_private.not_nil!.as(Void*)
    end

  end
end

