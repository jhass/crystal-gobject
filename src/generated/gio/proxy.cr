module Gio
  module Proxy
    def self.default_for_protocol(protocol)
      __return_value = LibGio.proxy_get_default_for_protocol(protocol)
      __return_value
    end

    def connect(connection, proxy_address, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_connect((to_unsafe as LibGio::Proxy*), (connection.to_unsafe as LibGio::IOStream*), (proxy_address.to_unsafe as LibGio::ProxyAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::IOStream.new(__return_value)
    end

    def connect_async(connection, proxy_address, cancellable, callback, user_data)
      __return_value = LibGio.proxy_connect_async((to_unsafe as LibGio::Proxy*), (connection.to_unsafe as LibGio::IOStream*), (proxy_address.to_unsafe as LibGio::ProxyAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_connect_finish((to_unsafe as LibGio::Proxy*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::IOStream.new(__return_value)
    end

    def supports_hostname
      __return_value = LibGio.proxy_supports_hostname((to_unsafe as LibGio::Proxy*))
      __return_value
    end

  end
end

