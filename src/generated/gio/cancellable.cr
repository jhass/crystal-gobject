module Gio
  class Cancellable < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Cancellable*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Cancellable*)
    end

    def self.new : self
      __return_value = LibGio.cancellable_new
      cast Gio::Cancellable.new(__return_value)
    end

    def self.current
      __return_value = LibGio.cancellable_get_current
      Gio::Cancellable.new(__return_value) if __return_value
    end

    def cancel
      LibGio.cancellable_cancel(@pointer.as(LibGio::Cancellable*))
      nil
    end

    def connect(callback, data, data_destroy_func)
      __return_value = LibGio.cancellable_connect(@pointer.as(LibGio::Cancellable*), callback, data ? data : nil, data_destroy_func ? data_destroy_func : nil)
      __return_value
    end

    def disconnect(handler_id)
      LibGio.cancellable_disconnect(@pointer.as(LibGio::Cancellable*), UInt64.new(handler_id))
      nil
    end

    def fd
      __return_value = LibGio.cancellable_get_fd(@pointer.as(LibGio::Cancellable*))
      __return_value
    end

    def cancelled?
      __return_value = LibGio.cancellable_is_cancelled(@pointer.as(LibGio::Cancellable*))
      __return_value
    end

    def make_pollfd(pollfd)
      __return_value = LibGio.cancellable_make_pollfd(@pointer.as(LibGio::Cancellable*), pollfd.to_unsafe.as(LibGLib::PollFD*))
      __return_value
    end

    def pop_current
      LibGio.cancellable_pop_current(@pointer.as(LibGio::Cancellable*))
      nil
    end

    def push_current
      LibGio.cancellable_push_current(@pointer.as(LibGio::Cancellable*))
      nil
    end

    def release_fd
      LibGio.cancellable_release_fd(@pointer.as(LibGio::Cancellable*))
      nil
    end

    def reset
      LibGio.cancellable_reset(@pointer.as(LibGio::Cancellable*))
      nil
    end

    def error_if_cancelled= # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.cancellable_set_error_if_cancelled(@pointer.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    alias CancelledSignal = Cancellable ->
    def on_cancelled(&__block : CancelledSignal)
      __callback = ->(_arg0 : LibGio::Cancellable*) {
       __return_value = __block.call(Cancellable.new(_arg0))
       __return_value
      }
      connect("cancelled", __callback)
    end

  end
end

