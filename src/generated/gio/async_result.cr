module Gio
  module AsyncResult
    def source_object
      __return_value = LibGio.async_result_get_source_object(@pointer.as(LibGio::AsyncResult*))
      GObject::Object.new(__return_value)
    end

    def user_data
      LibGio.async_result_get_user_data(@pointer.as(LibGio::AsyncResult*))
      nil
    end

    def tagged?(source_tag)
      __return_value = LibGio.async_result_is_tagged(@pointer.as(LibGio::AsyncResult*), source_tag ? source_tag : nil)
      __return_value
    end

    def legacy_propagate_error
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.async_result_legacy_propagate_error(@pointer.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

