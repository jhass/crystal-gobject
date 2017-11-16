require "./socket_address"

module Gio
  class UnixSocketAddress < SocketAddress
    @pointer : Void*
    def initialize(pointer : LibGio::UnixSocketAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixSocketAddress*)
    end

    # Implements SocketConnectable
    def abstract
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "abstract", gvalue)
      gvalue.boolean
    end

    def address_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "address_type", gvalue)
      gvalue.enum
    end

    def path
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "path", gvalue)
      gvalue.string
    end

    def path_as_array
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "path_as_array", gvalue)
      gvalue
    end

    def self.new(path) : self
      __return_value = LibGio.unix_socket_address_new(path.to_unsafe)
      cast Gio::SocketAddress.new(__return_value)
    end

    def self.new_abstract(path, path_len) : self
      __return_value = LibGio.unix_socket_address_new_abstract(path, Int32.new(path_len))
      cast Gio::SocketAddress.new(__return_value)
    end

    def self.new_with_type(path, path_len, type : Gio::UnixSocketAddressType) : self
      __return_value = LibGio.unix_socket_address_new_with_type(path, Int32.new(path_len), type)
      cast Gio::SocketAddress.new(__return_value)
    end

    def self.abstract_names_supported
      __return_value = LibGio.unix_socket_address_abstract_names_supported
      __return_value
    end

    def address_type
      __return_value = LibGio.unix_socket_address_get_address_type(@pointer.as(LibGio::UnixSocketAddress*))
      __return_value
    end

    def is_abstract
      __return_value = LibGio.unix_socket_address_get_is_abstract(@pointer.as(LibGio::UnixSocketAddress*))
      __return_value
    end

    def path
      __return_value = LibGio.unix_socket_address_get_path(@pointer.as(LibGio::UnixSocketAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def path_len
      __return_value = LibGio.unix_socket_address_get_path_len(@pointer.as(LibGio::UnixSocketAddress*))
      __return_value
    end

  end
end

