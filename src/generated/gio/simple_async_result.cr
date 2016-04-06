module Gio
  class SimpleAsyncResult < GObject::Object
    def initialize(@gio_simple_async_result)
    end

    def to_unsafe
      @gio_simple_async_result.not_nil!
    end

    # Implements AsyncResult
    def self.new_internal(source_object, callback : LibGio::AsyncReadyCallback?, user_data, source_tag)
      __return_value = LibGio.simple_async_result_new(source_object && (source_object.to_unsafe as LibGObject::Object*), callback && callback, user_data, source_tag)
      Gio::SimpleAsyncResult.new(__return_value)
    end

    def self.new_from_error(source_object, callback : LibGio::AsyncReadyCallback?, user_data, error)
      __return_value = LibGio.simple_async_result_new_from_error(source_object && (source_object.to_unsafe as LibGObject::Object*), callback && callback, user_data, error)
      Gio::SimpleAsyncResult.new(__return_value)
    end

    def self.valid?(result, source, source_tag)
      __return_value = LibGio.simple_async_result_is_valid((result.to_unsafe as LibGio::AsyncResult*), source && (source.to_unsafe as LibGObject::Object*), source_tag && source_tag)
      __return_value
    end

    def complete
      __return_value = LibGio.simple_async_result_complete((to_unsafe as LibGio::SimpleAsyncResult*))
      __return_value
    end

    def complete_in_idle
      __return_value = LibGio.simple_async_result_complete_in_idle((to_unsafe as LibGio::SimpleAsyncResult*))
      __return_value
    end

    def op_res_gboolean
      __return_value = LibGio.simple_async_result_get_op_res_gboolean((to_unsafe as LibGio::SimpleAsyncResult*))
      __return_value
    end

    def op_res_gssize
      __return_value = LibGio.simple_async_result_get_op_res_gssize((to_unsafe as LibGio::SimpleAsyncResult*))
      __return_value
    end

    def propagate_error
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.simple_async_result_propagate_error((to_unsafe as LibGio::SimpleAsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def check_cancellable=(check_cancellable)
      __return_value = LibGio.simple_async_result_set_check_cancellable((to_unsafe as LibGio::SimpleAsyncResult*), check_cancellable && (check_cancellable.to_unsafe as LibGio::Cancellable*))
      __return_value
    end

    def from_error=(error)
      __return_value = LibGio.simple_async_result_set_from_error((to_unsafe as LibGio::SimpleAsyncResult*), error)
      __return_value
    end

    def handle_cancellation=(handle_cancellation)
      __return_value = LibGio.simple_async_result_set_handle_cancellation((to_unsafe as LibGio::SimpleAsyncResult*), handle_cancellation)
      __return_value
    end

    def op_res_gboolean=(op_res)
      __return_value = LibGio.simple_async_result_set_op_res_gboolean((to_unsafe as LibGio::SimpleAsyncResult*), op_res)
      __return_value
    end

    def op_res_gssize=(op_res)
      __return_value = LibGio.simple_async_result_set_op_res_gssize((to_unsafe as LibGio::SimpleAsyncResult*), Int64.new(op_res))
      __return_value
    end

  end
end

