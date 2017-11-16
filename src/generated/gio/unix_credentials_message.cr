require "./socket_control_message"

module Gio
  class UnixCredentialsMessage < SocketControlMessage
    @pointer : Void*
    def initialize(pointer : LibGio::UnixCredentialsMessage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixCredentialsMessage*)
    end

    def credentials
      __return_value = LibGio.unix_credentials_message_get_credentials(to_unsafe.as(LibGio::UnixCredentialsMessage*))
      Gio::Credentials.new(__return_value)
    end

    def self.new : self
      __return_value = LibGio.unix_credentials_message_new
      cast Gio::SocketControlMessage.new(__return_value)
    end

    def self.new_with_credentials(credentials) : self
      __return_value = LibGio.unix_credentials_message_new_with_credentials(credentials.to_unsafe.as(LibGio::Credentials*))
      cast Gio::SocketControlMessage.new(__return_value)
    end

    def self.supported?
      __return_value = LibGio.unix_credentials_message_is_supported
      __return_value
    end

    def credentials
      __return_value = LibGio.unix_credentials_message_get_credentials(@pointer.as(LibGio::UnixCredentialsMessage*))
      Gio::Credentials.new(__return_value)
    end

  end
end

