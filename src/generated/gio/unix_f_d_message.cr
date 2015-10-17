require "./socket_control_message"

module Gio
  class UnixFDMessage < SocketControlMessage
    def initialize @gio_unix_f_d_message
    end

    def to_unsafe
      @gio_unix_f_d_message.not_nil!
    end


    def self.new_internal
      __return_value = LibGio.unix_f_d_message_new
      Gio::SocketControlMessage.new(__return_value)
    end

    def self.new_with_fd_list(fd_list)
      __return_value = LibGio.unix_f_d_message_new_with_fd_list((fd_list.to_unsafe as LibGio::UnixFDList*))
      Gio::SocketControlMessage.new(__return_value)
    end

    def append_fd(fd)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_message_append_fd((to_unsafe as LibGio::UnixFDMessage*), Int32.new(fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def fd_list
      __return_value = LibGio.unix_f_d_message_get_fd_list((to_unsafe as LibGio::UnixFDMessage*))
      Gio::UnixFDList.new(__return_value)
    end

    def steal_fds(length)
      __return_value = LibGio.unix_f_d_message_steal_fds((to_unsafe as LibGio::UnixFDMessage*), Int32.new(length))
      PointerIterator.new(__return_value) {|__item_96| __item_96 }
    end

  end
end

