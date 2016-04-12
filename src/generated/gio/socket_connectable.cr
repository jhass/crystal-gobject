module Gio
  module SocketConnectable
    def enumerate
      __return_value = LibGio.socket_connectable_enumerate((to_unsafe as LibGio::SocketConnectable*))
      Gio::SocketAddressEnumerator.new(__return_value)
    end

    def proxy_enumerate
      __return_value = LibGio.socket_connectable_proxy_enumerate((to_unsafe as LibGio::SocketConnectable*))
      Gio::SocketAddressEnumerator.new(__return_value)
    end

    def to_string
      __return_value = LibGio.socket_connectable_to_string((to_unsafe as LibGio::SocketConnectable*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

