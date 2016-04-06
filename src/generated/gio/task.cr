module Gio
  class Task < GObject::Object
    def initialize(@gio_task)
    end

    def to_unsafe
      @gio_task.not_nil!
    end

    # Implements AsyncResult

    def self.new_internal(source_object, cancellable, callback : LibGio::AsyncReadyCallback?, callback_data)
      __return_value = LibGio.task_new(source_object && (source_object.to_unsafe as LibGObject::Object*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, callback_data)
      Gio::Task.new(__return_value)
    end

    def self.valid?(result, source_object)
      __return_value = LibGio.task_is_valid((result.to_unsafe as LibGio::AsyncResult*), source_object && (source_object.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def self.report_error(source_object, callback : LibGio::AsyncReadyCallback?, callback_data, source_tag, error)
      __return_value = LibGio.task_report_error(source_object && (source_object.to_unsafe as LibGObject::Object*), callback && callback, callback_data, source_tag, error)
      __return_value
    end

    def cancellable
      __return_value = LibGio.task_get_cancellable((to_unsafe as LibGio::Task*))
      Gio::Cancellable.new(__return_value)
    end

    def check_cancellable
      __return_value = LibGio.task_get_check_cancellable((to_unsafe as LibGio::Task*))
      __return_value
    end

    def completed
      __return_value = LibGio.task_get_completed((to_unsafe as LibGio::Task*))
      __return_value
    end

    def context
      __return_value = LibGio.task_get_context((to_unsafe as LibGio::Task*))
      GLib::MainContext.new(__return_value)
    end

    def priority
      __return_value = LibGio.task_get_priority((to_unsafe as LibGio::Task*))
      __return_value
    end

    def return_on_cancel
      __return_value = LibGio.task_get_return_on_cancel((to_unsafe as LibGio::Task*))
      __return_value
    end

    def source_object
      __return_value = LibGio.task_get_source_object((to_unsafe as LibGio::Task*))
      GObject::Object.new(__return_value)
    end

    def source_tag
      __return_value = LibGio.task_get_source_tag((to_unsafe as LibGio::Task*))
      __return_value
    end

    def task_data
      __return_value = LibGio.task_get_task_data((to_unsafe as LibGio::Task*))
      __return_value
    end

    def had_error
      __return_value = LibGio.task_had_error((to_unsafe as LibGio::Task*))
      __return_value
    end

    def propagate_boolean
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.task_propagate_boolean((to_unsafe as LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def propagate_int
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.task_propagate_int((to_unsafe as LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def propagate_pointer
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.task_propagate_pointer((to_unsafe as LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def return_boolean(result)
      __return_value = LibGio.task_return_boolean((to_unsafe as LibGio::Task*), result)
      __return_value
    end

    def return_error(error)
      __return_value = LibGio.task_return_error((to_unsafe as LibGio::Task*), error)
      __return_value
    end

    def return_error_if_cancelled
      __return_value = LibGio.task_return_error_if_cancelled((to_unsafe as LibGio::Task*))
      __return_value
    end

    def return_int(result)
      __return_value = LibGio.task_return_int((to_unsafe as LibGio::Task*), Int64.new(result))
      __return_value
    end

    def return_pointer(result, result_destroy : LibGLib::DestroyNotify?)
      __return_value = LibGio.task_return_pointer((to_unsafe as LibGio::Task*), result && result, result_destroy && result_destroy)
      __return_value
    end

    def check_cancellable=(check_cancellable)
      __return_value = LibGio.task_set_check_cancellable((to_unsafe as LibGio::Task*), check_cancellable)
      __return_value
    end

    def priority=(priority)
      __return_value = LibGio.task_set_priority((to_unsafe as LibGio::Task*), Int32.new(priority))
      __return_value
    end

    def return_on_cancel=(return_on_cancel)
      __return_value = LibGio.task_set_return_on_cancel((to_unsafe as LibGio::Task*), return_on_cancel)
      __return_value
    end

    def source_tag=(source_tag)
      __return_value = LibGio.task_set_source_tag((to_unsafe as LibGio::Task*), source_tag)
      __return_value
    end

    def set_task_data(task_data, task_data_destroy : LibGLib::DestroyNotify?)
      __return_value = LibGio.task_set_task_data((to_unsafe as LibGio::Task*), task_data && task_data, task_data_destroy && task_data_destroy)
      __return_value
    end

  end
end

