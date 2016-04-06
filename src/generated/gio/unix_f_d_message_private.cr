module Gio
  class UnixFDMessagePrivate
    include GObject::WrappedType

    def initialize(@gio_unix_f_d_message_private)
    end

    def to_unsafe
      @gio_unix_f_d_message_private.not_nil!
    end

  end
end

