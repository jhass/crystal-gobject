module Gio
  class NativeSocketAddress
    include GObject::WrappedType

    @gio_native_socket_address : LibGio::NativeSocketAddress*?
    def initialize(@gio_native_socket_address : LibGio::NativeSocketAddress*)
    end

    def to_unsafe
      @gio_native_socket_address.not_nil!
    end

  end
end

