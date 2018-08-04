module Gio
  module AppInfo
    def self.create_from_commandline(commandline, application_name, flags : Gio::AppInfoCreateFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_create_from_commandline(commandline.to_unsafe, application_name ? application_name.to_unsafe : nil, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.all
      __return_value = LibGio.app_info_get_all
      GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.all_for_type(content_type)
      __return_value = LibGio.app_info_get_all_for_type(content_type.to_unsafe)
      GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.default_for_type(content_type, must_support_uris)
      __return_value = LibGio.app_info_get_default_for_type(content_type.to_unsafe, must_support_uris)
      __return_value
    end

    def self.default_for_uri_scheme(uri_scheme)
      __return_value = LibGio.app_info_get_default_for_uri_scheme(uri_scheme.to_unsafe)
      __return_value
    end

    def self.fallback_for_type(content_type)
      __return_value = LibGio.app_info_get_fallback_for_type(content_type.to_unsafe)
      GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.recommended_for_type(content_type)
      __return_value = LibGio.app_info_get_recommended_for_type(content_type.to_unsafe)
      GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.launch_default_for_uri(uri, context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch_default_for_uri(uri.to_unsafe, context ? context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.launch_default_for_uri_async(uri, context, cancellable, callback, user_data)
      LibGio.app_info_launch_default_for_uri_async(uri.to_unsafe, context ? context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def self.launch_default_for_uri_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch_default_for_uri_finish(result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.reset_type_associations(content_type)
      LibGio.app_info_reset_type_associations(content_type.to_unsafe)
      nil
    end

    def add_supports_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_add_supports_type(@pointer.as(LibGio::AppInfo*), content_type.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def can_delete
      __return_value = LibGio.app_info_can_delete(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def can_remove_supports_type
      __return_value = LibGio.app_info_can_remove_supports_type(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def delete
      __return_value = LibGio.app_info_delete(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def dup
      __return_value = LibGio.app_info_dup(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def equal(appinfo2)
      __return_value = LibGio.app_info_equal(@pointer.as(LibGio::AppInfo*), appinfo2.to_unsafe.as(LibGio::AppInfo*))
      __return_value
    end

    def commandline
      __return_value = LibGio.app_info_get_commandline(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def description
      __return_value = LibGio.app_info_get_description(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def display_name
      __return_value = LibGio.app_info_get_display_name(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def executable
      __return_value = LibGio.app_info_get_executable(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon
      __return_value = LibGio.app_info_get_icon(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def id
      __return_value = LibGio.app_info_get_id(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGio.app_info_get_name(@pointer.as(LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def supported_types
      __return_value = LibGio.app_info_get_supported_types(@pointer.as(LibGio::AppInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def launch(files, context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch(@pointer.as(LibGio::AppInfo*), files ? files : nil, context ? context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def launch_uris(uris, context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch_uris(@pointer.as(LibGio::AppInfo*), uris ? uris : nil, context ? context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_supports_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_remove_supports_type(@pointer.as(LibGio::AppInfo*), content_type.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_default_for_extension(extension)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_default_for_extension(@pointer.as(LibGio::AppInfo*), extension.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_default_for_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_default_for_type(@pointer.as(LibGio::AppInfo*), content_type.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_last_used_for_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_last_used_for_type(@pointer.as(LibGio::AppInfo*), content_type.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def should_show
      __return_value = LibGio.app_info_should_show(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def supports_files
      __return_value = LibGio.app_info_supports_files(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

    def supports_uris
      __return_value = LibGio.app_info_supports_uris(@pointer.as(LibGio::AppInfo*))
      __return_value
    end

  end
end

