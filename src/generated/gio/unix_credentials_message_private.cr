module Gio
  class UnixCredentialsMessagePrivate
    include GObject::WrappedType

    @gio_unix_credentials_message_private : LibGio::UnixCredentialsMessagePrivate*?
    def initialize(@gio_unix_credentials_message_private : LibGio::UnixCredentialsMessagePrivate*)
    end

    def to_unsafe
      @gio_unix_credentials_message_private.not_nil!
    end

  end
end

