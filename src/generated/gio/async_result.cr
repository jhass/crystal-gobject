module Gio
  module AsyncResult
    def source_object
      __return_value = LibGio.async_result_get_source_object(to_unsafe.as(LibGio::AsyncResult*))
      GObject::Object.new(__return_value)
    end

    def user_data
      LibGio.async_result_get_user_data(to_unsafe.as(LibGio::AsyncResult*))
      nil
    end

    def tagged?(source_tag)
      __return_value = LibGio.async_result_is_tagged(to_unsafe.as(LibGio::AsyncResult*), source_tag ? source_tag : nil)
      __return_value
    end

    def legacy_propagate_error
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.async_result_legacy_propagate_error(to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

