require "./socket_control_message"

module Gio
  class UnixCredentialsMessage < SocketControlMessage
    def initialize(@gio_unix_credentials_message)
    end

    def to_unsafe
      @gio_unix_credentials_message.not_nil!
    end


    def self.new_internal
      __return_value = LibGio.unix_credentials_message_new
      Gio::SocketControlMessage.new(__return_value)
    end

    def self.new_with_credentials(credentials)
      __return_value = LibGio.unix_credentials_message_new_with_credentials((credentials.to_unsafe as LibGio::Credentials*))
      Gio::SocketControlMessage.new(__return_value)
    end

    def self.supported?
      __return_value = LibGio.unix_credentials_message_is_supported
      __return_value
    end

    def credentials
      __return_value = LibGio.unix_credentials_message_get_credentials((to_unsafe as LibGio::UnixCredentialsMessage*))
      Gio::Credentials.new(__return_value)
    end

  end
end

