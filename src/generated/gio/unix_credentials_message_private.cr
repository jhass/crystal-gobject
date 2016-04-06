module Gio
  class UnixCredentialsMessagePrivate
    include GObject::WrappedType

    def initialize(@gio_unix_credentials_message_private)
    end

    def to_unsafe
      @gio_unix_credentials_message_private.not_nil!
    end

  end
end

