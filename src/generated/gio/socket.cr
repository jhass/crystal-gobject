module Gio
  class Socket < GObject::Object
    @gio_socket : LibGio::Socket*?
    def initialize(@gio_socket : LibGio::Socket*)
    end

    def to_unsafe
      @gio_socket.not_nil!
    end

    # Implements DatagramBased
    # Implements Initable
    def blocking
      __return_value = LibGio.socket_get_blocking(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def broadcast
      __return_value = LibGio.socket_get_broadcast(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def family
      __return_value = LibGio.socket_get_family(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def fd
      __return_value = LibGio.socket_get_fd(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def keepalive
      __return_value = LibGio.socket_get_keepalive(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def listen_backlog
      __return_value = LibGio.socket_get_listen_backlog(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def local_address
      __return_value = LibGio.socket_get_local_address(to_unsafe.as(LibGio::Socket*))
      Gio::SocketAddress.new(__return_value)
    end

    def multicast_loopback
      __return_value = LibGio.socket_get_multicast_loopback(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def multicast_ttl
      __return_value = LibGio.socket_get_multicast_ttl(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def protocol
      __return_value = LibGio.socket_get_protocol(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def remote_address
      __return_value = LibGio.socket_get_remote_address(to_unsafe.as(LibGio::Socket*))
      Gio::SocketAddress.new(__return_value)
    end

    def timeout
      __return_value = LibGio.socket_get_timeout(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def ttl
      __return_value = LibGio.socket_get_ttl(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def type
      __return_value = LibGio.socket_get_type(to_unsafe.as(LibGio::Socket*))
      __return_value
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
      __return_value = LibGio.socket_accept(to_unsafe.as(LibGio::Socket*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def bind(address, allow_reuse)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_bind(to_unsafe.as(LibGio::Socket*), address.to_unsafe.as(LibGio::SocketAddress*), allow_reuse, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def check_connect_result
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_check_connect_result(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_close(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def condition_check(condition : GLib::IOCondition)
      __return_value = LibGio.socket_condition_check(to_unsafe.as(LibGio::Socket*), condition)
      __return_value
    end

    def condition_timed_wait(condition : GLib::IOCondition, timeout, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_condition_timed_wait(to_unsafe.as(LibGio::Socket*), condition, Int64.new(timeout), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def condition_wait(condition : GLib::IOCondition, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_condition_wait(to_unsafe.as(LibGio::Socket*), condition, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connect(address, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connect(to_unsafe.as(LibGio::Socket*), address.to_unsafe.as(LibGio::SocketAddress*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connection_factory_create_connection
      __return_value = LibGio.socket_connection_factory_create_connection(to_unsafe.as(LibGio::Socket*))
      Gio::SocketConnection.new(__return_value)
    end

    def available_bytes
      __return_value = LibGio.socket_get_available_bytes(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def blocking
      __return_value = LibGio.socket_get_blocking(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def broadcast
      __return_value = LibGio.socket_get_broadcast(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def credentials
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_credentials(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Credentials.new(__return_value)
    end

    def family
      __return_value = LibGio.socket_get_family(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def fd
      __return_value = LibGio.socket_get_fd(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def keepalive
      __return_value = LibGio.socket_get_keepalive(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def listen_backlog
      __return_value = LibGio.socket_get_listen_backlog(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def local_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_local_address(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def multicast_loopback
      __return_value = LibGio.socket_get_multicast_loopback(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def multicast_ttl
      __return_value = LibGio.socket_get_multicast_ttl(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def option(level, optname, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_option(to_unsafe.as(LibGio::Socket*), Int32.new(level), Int32.new(optname), value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def protocol
      __return_value = LibGio.socket_get_protocol(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def remote_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_get_remote_address(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def socket_type
      __return_value = LibGio.socket_get_socket_type(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def timeout
      __return_value = LibGio.socket_get_timeout(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def ttl
      __return_value = LibGio.socket_get_ttl(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def closed?
      __return_value = LibGio.socket_is_closed(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def connected?
      __return_value = LibGio.socket_is_connected(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

    def join_multicast_group(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_join_multicast_group(to_unsafe.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def leave_multicast_group(group, source_specific, iface)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_leave_multicast_group(to_unsafe.as(LibGio::Socket*), group.to_unsafe.as(LibGio::InetAddress*), source_specific, iface ? iface.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def listen
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listen(to_unsafe.as(LibGio::Socket*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive(buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive(to_unsafe.as(LibGio::Socket*), buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_from(address, buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_from(to_unsafe.as(LibGio::Socket*), address, buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_message(address, vectors, num_vectors, messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_message(to_unsafe.as(LibGio::Socket*), address, vectors, Int32.new(num_vectors), messages, num_messages, flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_messages(messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_messages(to_unsafe.as(LibGio::Socket*), messages, UInt32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def receive_with_blocking(buffer, size, blocking, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_receive_with_blocking(to_unsafe.as(LibGio::Socket*), buffer, UInt64.new(size), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send(buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send(to_unsafe.as(LibGio::Socket*), buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_message(address, vectors, num_vectors, messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_message(to_unsafe.as(LibGio::Socket*), address ? address.to_unsafe.as(LibGio::SocketAddress*) : nil, vectors, Int32.new(num_vectors), messages ? messages : nil, Int32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_messages(messages, num_messages, flags, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_messages(to_unsafe.as(LibGio::Socket*), messages, UInt32.new(num_messages), Int32.new(flags), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_to(address, buffer, size, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_to(to_unsafe.as(LibGio::Socket*), address ? address.to_unsafe.as(LibGio::SocketAddress*) : nil, buffer, UInt64.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_with_blocking(buffer, size, blocking, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_send_with_blocking(to_unsafe.as(LibGio::Socket*), buffer, UInt64.new(size), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def blocking=(blocking)
      LibGio.socket_set_blocking(to_unsafe.as(LibGio::Socket*), blocking)
      nil
    end

    def broadcast=(broadcast)
      LibGio.socket_set_broadcast(to_unsafe.as(LibGio::Socket*), broadcast)
      nil
    end

    def keepalive=(keepalive)
      LibGio.socket_set_keepalive(to_unsafe.as(LibGio::Socket*), keepalive)
      nil
    end

    def listen_backlog=(backlog)
      LibGio.socket_set_listen_backlog(to_unsafe.as(LibGio::Socket*), Int32.new(backlog))
      nil
    end

    def multicast_loopback=(loopback)
      LibGio.socket_set_multicast_loopback(to_unsafe.as(LibGio::Socket*), loopback)
      nil
    end

    def multicast_ttl=(ttl)
      LibGio.socket_set_multicast_ttl(to_unsafe.as(LibGio::Socket*), UInt32.new(ttl))
      nil
    end

    def set_option(level, optname, value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_set_option(to_unsafe.as(LibGio::Socket*), Int32.new(level), Int32.new(optname), Int32.new(value), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def timeout=(timeout)
      LibGio.socket_set_timeout(to_unsafe.as(LibGio::Socket*), UInt32.new(timeout))
      nil
    end

    def ttl=(ttl)
      LibGio.socket_set_ttl(to_unsafe.as(LibGio::Socket*), UInt32.new(ttl))
      nil
    end

    def shutdown(shutdown_read, shutdown_write)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_shutdown(to_unsafe.as(LibGio::Socket*), shutdown_read, shutdown_write, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def speaks_ipv4
      __return_value = LibGio.socket_speaks_ipv4(to_unsafe.as(LibGio::Socket*))
      __return_value
    end

  end
end

