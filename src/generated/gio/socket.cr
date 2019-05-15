module Gio
  class Socket < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Socket*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Socket*)
    end

    # Implements DatagramBased
    # Implements Initable
    def blocking
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "blocking", gvalue)
      gvalue.boolean
    end

    def broadcast
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "broadcast", gvalue)
      gvalue.boolean
    end

    def family
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family", gvalue)
      gvalue.enum
    end

    def fd
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "fd", gvalue)
      gvalue
    end

    def keepalive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "keepalive", gvalue)
      gvalue.boolean
    end

    def listen_backlog
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "listen_backlog", gvalue)
      gvalue
    end

    def local_address
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "local_address", gvalue)
      Gio::SocketAddress.cast(gvalue.object)
    end

    def multicast_loopback
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "multicast_loopback", gvalue)
      gvalue.boolean
    end

    def multicast_ttl
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "multicast_ttl", gvalue)
      gvalue
    end

    def protocol
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "protocol", gvalue)
      gvalue.enum
    end

    def remote_address
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "remote_address", gvalue)
      Gio::SocketAddress.cast(gvalue.object)
    end

    def timeout
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "timeout", gvalue)
      gvalue
    end

    def ttl
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ttl", gvalue)
      gvalue
    end

    def type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "type", gvalue)
      gvalue.enum
    end

    def self.new(family : Gio::SocketFamily, type : Gio::SocketType, protocol : Gio::SocketProtocol) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_new(family, type, protocol, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::Socket.new(__return_value)
    end

    def self.new_from_fd(fd) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_new_from_fd(Int32.new(fd), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::Socket.new(__return_value)
    end

    def accept(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_accept(@pointer.as(LibGio::Socket*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def bind(address, allow_reuse)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_bind(@pointer.as(LibGio::Socket*), address.to_unsafe.as(LibGio::SocketAddress*), allow_reuse, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def check_connect_result
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_check_connect_result(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_close(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def condition_check(condition : GLib::IOCondition)
      __return_value = LibGio.socket_condition_check(@pointer.as(LibGio::Socket*), condition)
      __return_value
    end

    def condition_timed_wait(condition : GLib::IOCondition, timeout_us, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_condition_timed_wait(@pointer.as(LibGio::Socket*), condition, Int64.new(timeout_us), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def condition_wait(condition : GLib::IOCondition, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_condition_wait(@pointer.as(LibGio::Socket*), condition, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connect(address, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connect(@pointer.as(LibGio::Socket*), address.to_unsafe.as(LibGio::SocketAddress*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connection_factory_create_connection
      __return_value = LibGio.socket_connection_factory_create_connection(@pointer.as(LibGio::Socket*))
      Gio::SocketConnection.new(__return_value)
    end

    def available_bytes
      __return_value = LibGio.socket_get_available_bytes(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def blocking
      __return_value = LibGio.socket_get_blocking(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def broadcast
      __return_value = LibGio.socket_get_broadcast(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def credentials
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_credentials(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def family
      __return_value = LibGio.socket_get_family(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def fd
      __return_value = LibGio.socket_get_fd(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def keepalive
      __return_value = LibGio.socket_get_keepalive(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def listen_backlog
      __return_value = LibGio.socket_get_listen_backlog(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def local_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_local_address(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def multicast_loopback
      __return_value = LibGio.socket_get_multicast_loopback(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def multicast_ttl
      __return_value = LibGio.socket_get_multicast_ttl(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def option(level, optname, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_option(@pointer.as(LibGio::Socket*), Int32.new(level), Int32.new(optname), value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def protocol
      __return_value = LibGio.socket_get_protocol(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def remote_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_remote_address(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def socket_type
      __return_value = LibGio.socket_get_socket_type(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def timeout
      __return_value = LibGio.socket_get_timeout(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def ttl
      __return_value = LibGio.socket_get_ttl(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def closed?
      __return_value = LibGio.socket_is_closed(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def connected?
      __return_value = LibGio.socket_is_connected(@pointer.as(LibGio::Socket*))
      __return_value
    end

    def join_multicast_group(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_join_multicast_group(@pointer.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def join_multicast_group_ssm(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_join_multicast_group_ssm(@pointer.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific ? source_specific.to_unsafe.as(LibGio::InetAddress*) : nil, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def leave_multicast_group(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_leave_multicast_group(@pointer.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def leave_multicast_group_ssm(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_leave_multicast_group_ssm(@pointer.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific ? source_specific.to_unsafe.as(LibGio::InetAddress*) : nil, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def listen
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listen(@pointer.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive(buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive(@pointer.as(LibGio::Socket*), buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_from(address, buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_from(@pointer.as(LibGio::Socket*), address, buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_message(address, vectors, num_vectors, messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_message(@pointer.as(LibGio::Socket*), address, vectors, Int32.new(num_vectors), messages, num_messages, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_messages(messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_messages(@pointer.as(LibGio::Socket*), messages, UInt32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_with_blocking(buffer, size, blocking, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_with_blocking(@pointer.as(LibGio::Socket*), buffer, UInt64.new(size), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send(buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send(@pointer.as(LibGio::Socket*), buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_message(address, vectors, num_vectors, messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_message(@pointer.as(LibGio::Socket*), address ? address.to_unsafe.as(LibGio::SocketAddress*) : nil, vectors, Int32.new(num_vectors), messages ? messages : nil, Int32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_message_with_timeout(address, vectors, num_vectors, messages, num_messages, flags, timeout_us, bytes_written, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_message_with_timeout(@pointer.as(LibGio::Socket*), address ? address.to_unsafe.as(LibGio::SocketAddress*) : nil, vectors, Int32.new(num_vectors), messages ? messages : nil, Int32.new(num_messages), Int32.new(flags), Int64.new(timeout_us), bytes_written, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_messages(messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_messages(@pointer.as(LibGio::Socket*), messages, UInt32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_to(address, buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_to(@pointer.as(LibGio::Socket*), address ? address.to_unsafe.as(LibGio::SocketAddress*) : nil, buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_with_blocking(buffer, size, blocking, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_with_blocking(@pointer.as(LibGio::Socket*), buffer, UInt64.new(size), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def blocking=(blocking)
      LibGio.socket_set_blocking(@pointer.as(LibGio::Socket*), blocking)
      nil
    end

    def broadcast=(broadcast)
      LibGio.socket_set_broadcast(@pointer.as(LibGio::Socket*), broadcast)
      nil
    end

    def keepalive=(keepalive)
      LibGio.socket_set_keepalive(@pointer.as(LibGio::Socket*), keepalive)
      nil
    end

    def listen_backlog=(backlog)
      LibGio.socket_set_listen_backlog(@pointer.as(LibGio::Socket*), Int32.new(backlog))
      nil
    end

    def multicast_loopback=(loopback)
      LibGio.socket_set_multicast_loopback(@pointer.as(LibGio::Socket*), loopback)
      nil
    end

    def multicast_ttl=(ttl)
      LibGio.socket_set_multicast_ttl(@pointer.as(LibGio::Socket*), UInt32.new(ttl))
      nil
    end

    def set_option(level, optname, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_set_option(@pointer.as(LibGio::Socket*), Int32.new(level), Int32.new(optname), Int32.new(value), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def timeout=(timeout)
      LibGio.socket_set_timeout(@pointer.as(LibGio::Socket*), UInt32.new(timeout))
      nil
    end

    def ttl=(ttl)
      LibGio.socket_set_ttl(@pointer.as(LibGio::Socket*), UInt32.new(ttl))
      nil
    end

    def shutdown(shutdown_read, shutdown_write)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_shutdown(@pointer.as(LibGio::Socket*), shutdown_read, shutdown_write, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def speaks_ipv4
      __return_value = LibGio.socket_speaks_ipv4(@pointer.as(LibGio::Socket*))
      __return_value
    end

  end
end

