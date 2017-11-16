module Gio
  class Task < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Task*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Task*)
    end

    # Implements AsyncResult
    def completed
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "completed", gvalue)
      gvalue.boolean
    end

    def self.new(source_object, cancellable, callback, callback_data) : self
      __return_value = LibGio.task_new(source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, callback_data ? callback_data : nil)
      cast Gio::Task.new(__return_value)
    end

    def self.valid?(result, source_object)
      __return_value = LibGio.task_is_valid(result.to_unsafe.as(LibGio::AsyncResult*), source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil)
      __return_value
    end

    def self.report_error(source_object, callback, callback_data, source_tag, error)
      LibGio.task_report_error(source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, callback ? callback : nil, callback_data ? callback_data : nil, source_tag ? source_tag : nil, error)
      nil
    end

    def cancellable
      __return_value = LibGio.task_get_cancellable(@pointer.as(LibGio::Task*))
      Gio::Cancellable.new(__return_value)
    end

    def check_cancellable
      __return_value = LibGio.task_get_check_cancellable(@pointer.as(LibGio::Task*))
      __return_value
    end

    def completed
      __return_value = LibGio.task_get_completed(@pointer.as(LibGio::Task*))
      __return_value
    end

    def context
      __return_value = LibGio.task_get_context(@pointer.as(LibGio::Task*))
      GLib::MainContext.new(__return_value)
    end

    def priority
      __return_value = LibGio.task_get_priority(@pointer.as(LibGio::Task*))
      __return_value
    end

    def return_on_cancel
      __return_value = LibGio.task_get_return_on_cancel(@pointer.as(LibGio::Task*))
      __return_value
    end

    def source_object
      __return_value = LibGio.task_get_source_object(@pointer.as(LibGio::Task*))
      GObject::Object.new(__return_value)
    end

    def source_tag
      LibGio.task_get_source_tag(@pointer.as(LibGio::Task*))
      nil
    end

    def task_data
      LibGio.task_get_task_data(@pointer.as(LibGio::Task*))
      nil
    end

    def had_error
      __return_value = LibGio.task_had_error(@pointer.as(LibGio::Task*))
      __return_value
    end

    def propagate_boolean # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.task_propagate_boolean(@pointer.as(LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def propagate_int # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.task_propagate_int(@pointer.as(LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def propagate_pointer # function
      __error = Pointer(LibGLib::Error).null
      LibGio.task_propagate_pointer(@pointer.as(LibGio::Task*), pointerof(__error))
      GLib::Error.assert __error
      nil
    end

    def return_boolean(result)
      LibGio.task_return_boolean(@pointer.as(LibGio::Task*), result)
      nil
    end

    def return_error(error)
      LibGio.task_return_error(@pointer.as(LibGio::Task*), error)
      nil
    end

    def return_error_if_cancelled
      __return_value = LibGio.task_return_error_if_cancelled(@pointer.as(LibGio::Task*))
      __return_value
    end

    def return_int(result)
      LibGio.task_return_int(@pointer.as(LibGio::Task*), Int64.new(result))
      nil
    end

    def return_pointer(result, result_destroy)
      LibGio.task_return_pointer(@pointer.as(LibGio::Task*), result ? result : nil, result_destroy ? result_destroy : nil)
      nil
    end

    def check_cancellable=(check_cancellable)
      LibGio.task_set_check_cancellable(@pointer.as(LibGio::Task*), check_cancellable)
      nil
    end

    def priority=(priority)
      LibGio.task_set_priority(@pointer.as(LibGio::Task*), Int32.new(priority))
      nil
    end

    def return_on_cancel=(return_on_cancel)
      __return_value = LibGio.task_set_return_on_cancel(@pointer.as(LibGio::Task*), return_on_cancel)
      __return_value
    end

    def source_tag=(source_tag)
      LibGio.task_set_source_tag(@pointer.as(LibGio::Task*), source_tag ? source_tag : nil)
      nil
    end

    def set_task_data(task_data, task_data_destroy)
      LibGio.task_set_task_data(@pointer.as(LibGio::Task*), task_data ? task_data : nil, task_data_destroy ? task_data_destroy : nil)
      nil
    end

  end
end

