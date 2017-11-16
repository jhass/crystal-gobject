module Gio
  class UnixFDList < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::UnixFDList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixFDList*)
    end

    def self.new : self
      __return_value = LibGio.unix_f_d_list_new
      cast Gio::UnixFDList.new(__return_value)
    end

    def self.new_from_array(fds, n_fds) : self
      __return_value = LibGio.unix_f_d_list_new_from_array(fds, Int32.new(n_fds))
      cast Gio::UnixFDList.new(__return_value)
    end

    def append(fd) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_append(@pointer.as(LibGio::UnixFDList*), Int32.new(fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def get(index) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.unix_f_d_list_get(@pointer.as(LibGio::UnixFDList*), Int32.new(index), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def length
      __return_value = LibGio.unix_f_d_list_get_length(@pointer.as(LibGio::UnixFDList*))
      __return_value
    end

    def peek_fds(length)
      __return_value = LibGio.unix_f_d_list_peek_fds(@pointer.as(LibGio::UnixFDList*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def steal_fds(length)
      __return_value = LibGio.unix_f_d_list_steal_fds(@pointer.as(LibGio::UnixFDList*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

  end
end

