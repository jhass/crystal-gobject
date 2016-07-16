module Gio
  class NativeSocketAddress
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::NativeSocketAddress*))
    end

    @gio_native_socket_address : LibGio::NativeSocketAddress*?
    def initialize(@gio_native_socket_address : LibGio::NativeSocketAddress*)
    end

    def to_unsafe
      @gio_native_socket_address.not_nil!.as(Void*)
    end

  end
end

