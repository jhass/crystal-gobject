module Gio
  class SocketAddressEnumerator < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SocketAddressEnumerator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketAddressEnumerator*)
    end

    def next(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_enumerator_next(@pointer.as(LibGio::SocketAddressEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def next_async(cancellable, callback, user_data)
      LibGio.socket_address_enumerator_next_async(@pointer.as(LibGio::SocketAddressEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def next_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_enumerator_next_finish(@pointer.as(LibGio::SocketAddressEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

  end
end

