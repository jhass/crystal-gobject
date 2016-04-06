require "./socket_address"

module Gio
  class UnixSocketAddress < SocketAddress
    def initialize(@gio_unix_socket_address)
    end

    def to_unsafe
      @gio_unix_socket_address.not_nil!
    end

    # Implements SocketConnectable




    def self.new_internal(path)
      __return_value = LibGio.unix_socket_address_new(path)
      Gio::SocketAddress.new(__return_value)
    end

    def self.new_abstract(path, path_len)
      __return_value = LibGio.unix_socket_address_new_abstract(path, Int32.new(path_len))
      Gio::SocketAddress.new(__return_value)
    end

    def self.new_with_type(path, path_len, type)
      __return_value = LibGio.unix_socket_address_new_with_type(path, Int32.new(path_len), type)
      Gio::SocketAddress.new(__return_value)
    end

    def self.abstract_names_supported
      __return_value = LibGio.unix_socket_address_abstract_names_supported
      __return_value
    end

    def address_type
      __return_value = LibGio.unix_socket_address_get_address_type((to_unsafe as LibGio::UnixSocketAddress*))
      __return_value
    end

    def is_abstract
      __return_value = LibGio.unix_socket_address_get_is_abstract((to_unsafe as LibGio::UnixSocketAddress*))
      __return_value
    end

    def path
      __return_value = LibGio.unix_socket_address_get_path((to_unsafe as LibGio::UnixSocketAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def path_len
      __return_value = LibGio.unix_socket_address_get_path_len((to_unsafe as LibGio::UnixSocketAddress*))
      __return_value
    end

  end
end

