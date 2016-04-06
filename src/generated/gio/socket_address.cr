module Gio
  class SocketAddress < GObject::Object
    def initialize(@gio_socket_address)
    end

    def to_unsafe
      @gio_socket_address.not_nil!
    end

    # Implements SocketConnectable

    def self.new_from_native(native, len)
      __return_value = LibGio.socket_address_new_from_native(native, UInt64.new(len))
      Gio::SocketAddress.new(__return_value)
    end

    def family
      __return_value = LibGio.socket_address_get_family((to_unsafe as LibGio::SocketAddress*))
      __return_value
    end

    def native_size
      __return_value = LibGio.socket_address_get_native_size((to_unsafe as LibGio::SocketAddress*))
      __return_value
    end

    def to_native(dest, destlen)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_to_native((to_unsafe as LibGio::SocketAddress*), dest, UInt64.new(destlen), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

