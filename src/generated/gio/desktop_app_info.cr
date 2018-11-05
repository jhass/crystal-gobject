module Gio
  class DesktopAppInfo < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DesktopAppInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DesktopAppInfo*)
    end

    # Implements AppInfo
    def filename
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "filename", gvalue)
      gvalue.string
    end

    def self.new(desktop_id) : self
      __return_value = LibGio.desktop_app_info_new(desktop_id.to_unsafe)
      cast Gio::DesktopAppInfo.new(__return_value) if __return_value
    end

    def self.new_from_filename(filename) : self
      __return_value = LibGio.desktop_app_info_new_from_filename(filename.to_unsafe)
      cast Gio::DesktopAppInfo.new(__return_value) if __return_value
    end

    def self.new_from_keyfile(key_file) : self
      __return_value = LibGio.desktop_app_info_new_from_keyfile(key_file.to_unsafe.as(LibGLib::KeyFile*))
      cast Gio::DesktopAppInfo.new(__return_value) if __return_value
    end

    def self.implementations(interface)
      __return_value = LibGio.desktop_app_info_get_implementations(interface.to_unsafe)
      GLib::ListIterator(Gio::DesktopAppInfo, LibGio::DesktopAppInfo**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def self.search(search_string)
      __return_value = LibGio.desktop_app_info_search(search_string.to_unsafe)
      PointerIterator.new(__return_value) {|__item| PointerIterator.new(__item) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } }
    end

    def self.set_desktop_env(desktop_env)
      LibGio.desktop_app_info_set_desktop_env(desktop_env.to_unsafe)
      nil
    end

    def action_name(action_name)
      __return_value = LibGio.desktop_app_info_get_action_name(@pointer.as(LibGio::DesktopAppInfo*), action_name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def boolean(key)
      __return_value = LibGio.desktop_app_info_get_boolean(@pointer.as(LibGio::DesktopAppInfo*), key.to_unsafe)
      __return_value
    end

    def categories
      __return_value = LibGio.desktop_app_info_get_categories(@pointer.as(LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def filename
      __return_value = LibGio.desktop_app_info_get_filename(@pointer.as(LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def generic_name
      __return_value = LibGio.desktop_app_info_get_generic_name(@pointer.as(LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def is_hidden
      __return_value = LibGio.desktop_app_info_get_is_hidden(@pointer.as(LibGio::DesktopAppInfo*))
      __return_value
    end

    def keywords
      __return_value = LibGio.desktop_app_info_get_keywords(@pointer.as(LibGio::DesktopAppInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def locale_string(key)
      __return_value = LibGio.desktop_app_info_get_locale_string(@pointer.as(LibGio::DesktopAppInfo*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def nodisplay
      __return_value = LibGio.desktop_app_info_get_nodisplay(@pointer.as(LibGio::DesktopAppInfo*))
      __return_value
    end

    def show_in(desktop_env)
      __return_value = LibGio.desktop_app_info_get_show_in(@pointer.as(LibGio::DesktopAppInfo*), desktop_env ? desktop_env.to_unsafe : nil)
      __return_value
    end

    def startup_wm_class
      __return_value = LibGio.desktop_app_info_get_startup_wm_class(@pointer.as(LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def string(key)
      __return_value = LibGio.desktop_app_info_get_string(@pointer.as(LibGio::DesktopAppInfo*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_key(key)
      __return_value = LibGio.desktop_app_info_has_key(@pointer.as(LibGio::DesktopAppInfo*), key.to_unsafe)
      __return_value
    end

    def launch_action(action_name, launch_context)
      LibGio.desktop_app_info_launch_action(@pointer.as(LibGio::DesktopAppInfo*), action_name.to_unsafe, launch_context ? launch_context.to_unsafe.as(LibGio::AppLaunchContext*) : nil)
      nil
    end

    def launch_uris_as_manager(uris, launch_context, spawn_flags : GLib::SpawnFlags, user_setup, user_setup_data, pid_callback, pid_callback_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.desktop_app_info_launch_uris_as_manager(@pointer.as(LibGio::DesktopAppInfo*), uris, launch_context ? launch_context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, spawn_flags, user_setup ? user_setup : nil, user_setup_data ? user_setup_data : nil, pid_callback ? pid_callback : nil, pid_callback_data ? pid_callback_data : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def launch_uris_as_manager_with_fds(uris, launch_context, spawn_flags : GLib::SpawnFlags, user_setup, user_setup_data, pid_callback, pid_callback_data, stdin_fd, stdout_fd, stderr_fd)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.desktop_app_info_launch_uris_as_manager_with_fds(@pointer.as(LibGio::DesktopAppInfo*), uris, launch_context ? launch_context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, spawn_flags, user_setup ? user_setup : nil, user_setup_data ? user_setup_data : nil, pid_callback ? pid_callback : nil, pid_callback_data ? pid_callback_data : nil, Int32.new(stdin_fd), Int32.new(stdout_fd), Int32.new(stderr_fd), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def list_actions
      __return_value = LibGio.desktop_app_info_list_actions(@pointer.as(LibGio::DesktopAppInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

  end
end

