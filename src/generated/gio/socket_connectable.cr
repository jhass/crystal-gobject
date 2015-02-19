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

  end
end

