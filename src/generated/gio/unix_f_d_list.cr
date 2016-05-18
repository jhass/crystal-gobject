module Gio
  class UnixFDList < GObject::Object
    @gio_unix_f_d_list : LibGio::UnixFDList*?
    def initialize(@gio_unix_f_d_list : LibGio::UnixFDList*)
    end

    def to_unsafe
      @gio_unix_f_d_list.not_nil!
    end

    def self.new : self
      __return_value = LibGio.unix_f_d_list_new
      cast Gio::UnixFDList.new(__return_value)
    end

    def self.new_from_array(fds, n_fds) : self
      __return_value = LibGio.unix_f_d_list_new_from_array(fds, Int32.new(n_fds))
      cast Gio::UnixFDList.new(__return_value)
    end

    def append(fd)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_append(to_unsafe.as(LibGio::UnixFDList*), Int32.new(fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def get(index)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_get(to_unsafe.as(LibGio::UnixFDList*), Int32.new(index), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def length
      __return_value = LibGio.unix_f_d_list_get_length(to_unsafe.as(LibGio::UnixFDList*))
      __return_value
    end

    def peek_fds(length)
      __return_value = LibGio.unix_f_d_list_peek_fds(to_unsafe.as(LibGio::UnixFDList*), Int32.new(length))
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def steal_fds(length)
      __return_value = LibGio.unix_f_d_list_steal_fds(to_unsafe.as(LibGio::UnixFDList*), Int32.new(length))
      PointerIterator.new(__return_value) {|__item| __item }
    end

  end
end

