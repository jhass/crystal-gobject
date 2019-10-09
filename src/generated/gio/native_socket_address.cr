require "./socket_address"

module Gio
  class NativeSocketAddress < SocketAddress
    @pointer : Void*
    def initialize(pointer : LibGio::NativeSocketAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NativeSocketAddress*)
    end

    # Implements SocketConnectable
    def self.new(native, len) : self
      __return_value = LibGio.native_socket_address_new(native ? native : nil, UInt64.new(len))
      cast Gio::SocketAddress.new(__return_value)
    end

  end
end

