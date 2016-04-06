module Gio
  class NativeSocketAddress
    include GObject::WrappedType

    def initialize(@gio_native_socket_address)
    end

    def to_unsafe
      @gio_native_socket_address.not_nil!
    end

  end
end

