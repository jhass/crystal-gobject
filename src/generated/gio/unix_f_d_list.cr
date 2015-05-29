module Gio
  class UnixFDList < GObject::Object
    def initialize @gio_unix_f_d_list
    end

    def to_unsafe
      @gio_unix_f_d_list.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.unix_f_d_list_new
      Gio::UnixFDList.new(__return_value)
    end

    def self.new_from_array(fds, n_fds)
      __return_value = LibGio.unix_f_d_list_new_from_array(fds, Int32.cast(n_fds))
      Gio::UnixFDList.new(__return_value)
    end

    def append(fd)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_append((to_unsafe as LibGio::UnixFDList*), Int32.cast(fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def get(index)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_get((to_unsafe as LibGio::UnixFDList*), Int32.cast(index), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def length
      __return_value = LibGio.unix_f_d_list_get_length((to_unsafe as LibGio::UnixFDList*))
      __return_value
    end

    def peek_fds(length)
      __return_value = LibGio.unix_f_d_list_peek_fds((to_unsafe as LibGio::UnixFDList*), Int32.cast(length))
      PointerIterator.new(__return_value) {|__item_44| __item_44 }
    end

    def steal_fds(length)
      __return_value = LibGio.unix_f_d_list_steal_fds((to_unsafe as LibGio::UnixFDList*), Int32.cast(length))
      PointerIterator.new(__return_value) {|__item_69| __item_69 }
    end

  end
end

