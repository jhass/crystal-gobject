module Gio
  class AppLaunchContext < GObject::Object
    def initialize @gio_app_launch_context
    end

    def to_unsafe
      @gio_app_launch_context.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.app_launch_context_new
      Gio::AppLaunchContext.new(__return_value)
    end

    def display(info, files)
      __return_value = LibGio.app_launch_context_get_display((to_unsafe as LibGio::AppLaunchContext*), (info.to_unsafe as LibGio::AppInfo*), files)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def environment
      __return_value = LibGio.app_launch_context_get_environment((to_unsafe as LibGio::AppLaunchContext*))
      PointerIterator.new(__return_value) {|__item_63| raise "Expected string but got null" unless __item_63; String.new(__item_63) }
    end

    def startup_notify_id(info, files)
      __return_value = LibGio.app_launch_context_get_startup_notify_id((to_unsafe as LibGio::AppLaunchContext*), (info.to_unsafe as LibGio::AppInfo*), files)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def launch_failed(startup_notify_id)
      __return_value = LibGio.app_launch_context_launch_failed((to_unsafe as LibGio::AppLaunchContext*), startup_notify_id)
      __return_value
    end

    def setenv(variable, value)
      __return_value = LibGio.app_launch_context_setenv((to_unsafe as LibGio::AppLaunchContext*), variable, value)
      __return_value
    end

    def unsetenv(variable)
      __return_value = LibGio.app_launch_context_unsetenv((to_unsafe as LibGio::AppLaunchContext*), variable)
      __return_value
    end

  end
end

