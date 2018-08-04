module Gio
  class SocketAddress < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SocketAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketAddress*)
    end

    # Implements SocketConnectable
    def family
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family", gvalue)
      gvalue.enum
    end

    def self.new_from_native(native, len) : self
      __return_value = LibGio.socket_address_new_from_native(native, UInt64.new(len))
      cast Gio::SocketAddress.new(__return_value)
    end

    def family
      __return_value = LibGio.socket_address_get_family(@pointer.as(LibGio::SocketAddress*))
      __return_value
    end

    def native_size
      __return_value = LibGio.socket_address_get_native_size(@pointer.as(LibGio::SocketAddress*))
      __return_value
    end

    def to_native(dest, destlen)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_address_to_native(@pointer.as(LibGio::SocketAddress*), dest ? dest : nil, UInt64.new(destlen), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

