module Gio
  class SimpleAsyncResult < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SimpleAsyncResult*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleAsyncResult*)
    end

    # Implements AsyncResult
    def self.new(source_object, callback, user_data, source_tag) : self
      __return_value = LibGio.simple_async_result_new(source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, callback ? callback : nil, user_data ? user_data : nil, source_tag ? source_tag : nil)
      cast Gio::SimpleAsyncResult.new(__return_value)
    end

    def self.new_from_error(source_object, callback, user_data, error) : self
      __return_value = LibGio.simple_async_result_new_from_error(source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, callback ? callback : nil, user_data ? user_data : nil, error)
      cast Gio::SimpleAsyncResult.new(__return_value)
    end

    def self.valid?(result, source, source_tag)
      __return_value = LibGio.simple_async_result_is_valid(result.to_unsafe.as(LibGio::AsyncResult*), source ? source.to_unsafe.as(LibGObject::Object*) : nil, source_tag ? source_tag : nil)
      __return_value
    end

    def complete
      LibGio.simple_async_result_complete(@pointer.as(LibGio::SimpleAsyncResult*))
      nil
    end

    def complete_in_idle
      LibGio.simple_async_result_complete_in_idle(@pointer.as(LibGio::SimpleAsyncResult*))
      nil
    end

    def op_res_gboolean
      __return_value = LibGio.simple_async_result_get_op_res_gboolean(@pointer.as(LibGio::SimpleAsyncResult*))
      __return_value
    end

    def op_res_gssize
      __return_value = LibGio.simple_async_result_get_op_res_gssize(@pointer.as(LibGio::SimpleAsyncResult*))
      __return_value
    end

    def propagate_error
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.simple_async_result_propagate_error(@pointer.as(LibGio::SimpleAsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def check_cancellable=(check_cancellable)
      LibGio.simple_async_result_set_check_cancellable(@pointer.as(LibGio::SimpleAsyncResult*), check_cancellable ? check_cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
      nil
    end

    def from_error=(error)
      LibGio.simple_async_result_set_from_error(@pointer.as(LibGio::SimpleAsyncResult*), error)
      nil
    end

    def handle_cancellation=(handle_cancellation)
      LibGio.simple_async_result_set_handle_cancellation(@pointer.as(LibGio::SimpleAsyncResult*), handle_cancellation)
      nil
    end

    def op_res_gboolean=(op_res)
      LibGio.simple_async_result_set_op_res_gboolean(@pointer.as(LibGio::SimpleAsyncResult*), op_res)
      nil
    end

    def op_res_gssize=(op_res)
      LibGio.simple_async_result_set_op_res_gssize(@pointer.as(LibGio::SimpleAsyncResult*), Int64.new(op_res))
      nil
    end

  end
end

