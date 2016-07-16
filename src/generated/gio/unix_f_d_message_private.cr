module Gio
  class UnixFDMessagePrivate
    include GObject::WrappedType

    @gio_unix_f_d_message_private : LibGio::UnixFDMessagePrivate*?
    def initialize(@gio_unix_f_d_message_private : LibGio::UnixFDMessagePrivate*)
    end

    def to_unsafe
      @gio_unix_f_d_message_private.not_nil!.as(Void*)
    end

  end
end

