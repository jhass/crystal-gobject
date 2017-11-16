require "./socket_control_message"

module Gio
  class UnixFDMessage < SocketControlMessage
    @pointer : Void*
    def initialize(pointer : LibGio::UnixFDMessage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixFDMessage*)
    end

    def fd_list
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "fd_list", gvalue)
      Gio::UnixFDList.cast(gvalue.object)
    end

    def self.new : self
      __return_value = LibGio.unix_f_d_message_new
      cast Gio::SocketControlMessage.new(__return_value)
    end

    def self.new_with_fd_list(fd_list) : self
      __return_value = LibGio.unix_f_d_message_new_with_fd_list(fd_list.to_unsafe.as(LibGio::UnixFDList*))
      cast Gio::SocketControlMessage.new(__return_value)
    end

    def append_fd(fd) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_message_append_fd(@pointer.as(LibGio::UnixFDMessage*), Int32.new(fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def fd_list
      __return_value = LibGio.unix_f_d_message_get_fd_list(@pointer.as(LibGio::UnixFDMessage*))
      Gio::UnixFDList.new(__return_value)
    end

    def steal_fds(length)
      __return_value = LibGio.unix_f_d_message_steal_fds(@pointer.as(LibGio::UnixFDMessage*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

  end
end

