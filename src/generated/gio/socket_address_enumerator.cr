module Gio
  class SocketAddressEnumerator < GObject::Object
    @gio_socket_address_enumerator : LibGio::SocketAddressEnumerator*?
    def initialize(@gio_socket_address_enumerator : LibGio::SocketAddressEnumerator*)
    end

    def to_unsafe
      @gio_socket_address_enumerator.not_nil!
    end

    def next(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_enumerator_next(to_unsafe.as(LibGio::SocketAddressEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def next_async(cancellable, callback, user_data)
      LibGio.socket_address_enumerator_next_async(to_unsafe.as(LibGio::SocketAddressEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def next_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_enumerator_next_finish(to_unsafe.as(LibGio::SocketAddressEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

  end
end

