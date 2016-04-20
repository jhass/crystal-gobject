module Gio
  module AppInfo
    def self.create_from_commandline(commandline, application_name, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_create_from_commandline(commandline, application_name && application_name, flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.all
      __return_value = LibGio.app_info_get_all
      __return_value
    end

    def self.all_for_type(content_type)
      __return_value = LibGio.app_info_get_all_for_type(content_type)
      __return_value
    end

    def self.default_for_type(content_type, must_support_uris)
      __return_value = LibGio.app_info_get_default_for_type(content_type, must_support_uris)
      __return_value
    end

    def self.default_for_uri_scheme(uri_scheme)
      __return_value = LibGio.app_info_get_default_for_uri_scheme(uri_scheme)
      __return_value
    end

    def self.fallback_for_type(content_type)
      __return_value = LibGio.app_info_get_fallback_for_type(content_type)
      __return_value
    end

    def self.recommended_for_type(content_type)
      __return_value = LibGio.app_info_get_recommended_for_type(content_type)
      __return_value
    end

    def self.launch_default_for_uri(uri, launch_context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch_default_for_uri(uri, launch_context && (launch_context.to_unsafe as LibGio::AppLaunchContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.reset_type_associations(content_type)
      __return_value = LibGio.app_info_reset_type_associations(content_type)
      __return_value
    end

    def add_supports_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_add_supports_type((to_unsafe as LibGio::AppInfo*), content_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def can_delete
      __return_value = LibGio.app_info_can_delete((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def can_remove_supports_type
      __return_value = LibGio.app_info_can_remove_supports_type((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def delete
      __return_value = LibGio.app_info_delete((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def dup
      __return_value = LibGio.app_info_dup((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def equal(appinfo2)
      __return_value = LibGio.app_info_equal((to_unsafe as LibGio::AppInfo*), (appinfo2.to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def commandline
      __return_value = LibGio.app_info_get_commandline((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def description
      __return_value = LibGio.app_info_get_description((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def display_name
      __return_value = LibGio.app_info_get_display_name((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def executable
      __return_value = LibGio.app_info_get_executable((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon
      __return_value = LibGio.app_info_get_icon((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def id
      __return_value = LibGio.app_info_get_id((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGio.app_info_get_name((to_unsafe as LibGio::AppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def supported_types
      __return_value = LibGio.app_info_get_supported_types((to_unsafe as LibGio::AppInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def launch(files, launch_context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch((to_unsafe as LibGio::AppInfo*), files && files, launch_context && (launch_context.to_unsafe as LibGio::AppLaunchContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def launch_uris(uris, launch_context)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_launch_uris((to_unsafe as LibGio::AppInfo*), uris && uris, launch_context && (launch_context.to_unsafe as LibGio::AppLaunchContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_supports_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_remove_supports_type((to_unsafe as LibGio::AppInfo*), content_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_default_for_extension(extension)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_default_for_extension((to_unsafe as LibGio::AppInfo*), extension, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_default_for_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_default_for_type((to_unsafe as LibGio::AppInfo*), content_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_as_last_used_for_type(content_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.app_info_set_as_last_used_for_type((to_unsafe as LibGio::AppInfo*), content_type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def should_show
      __return_value = LibGio.app_info_should_show((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def supports_files
      __return_value = LibGio.app_info_supports_files((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

    def supports_uris
      __return_value = LibGio.app_info_supports_uris((to_unsafe as LibGio::AppInfo*))
      __return_value
    end

  end
end

