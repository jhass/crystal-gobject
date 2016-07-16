module Gio
  class AppLaunchContext < GObject::Object
    @gio_app_launch_context : LibGio::AppLaunchContext*?
    def initialize(@gio_app_launch_context : LibGio::AppLaunchContext*)
    end

    def to_unsafe
      @gio_app_launch_context.not_nil!
    end

    def self.new : self
      __return_value = LibGio.app_launch_context_new
      cast Gio::AppLaunchContext.new(__return_value)
    end

    def display(info, files)
      __return_value = LibGio.app_launch_context_get_display(to_unsafe.as(LibGio::AppLaunchContext*), info.to_unsafe.as(LibGio::AppInfo*), files)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def environment
      __return_value = LibGio.app_launch_context_get_environment(to_unsafe.as(LibGio::AppLaunchContext*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def startup_notify_id(info, files)
      __return_value = LibGio.app_launch_context_get_startup_notify_id(to_unsafe.as(LibGio::AppLaunchContext*), info.to_unsafe.as(LibGio::AppInfo*), files)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def launch_failed(startup_notify_id)
      __return_value = LibGio.app_launch_context_launch_failed(to_unsafe.as(LibGio::AppLaunchContext*), startup_notify_id.to_unsafe)
      __return_value
    end

    def setenv(variable, value)
      __return_value = LibGio.app_launch_context_setenv(to_unsafe.as(LibGio::AppLaunchContext*), variable.to_unsafe, value.to_unsafe)
      __return_value
    end

    def unsetenv(variable)
      __return_value = LibGio.app_launch_context_unsetenv(to_unsafe.as(LibGio::AppLaunchContext*), variable.to_unsafe)
      __return_value
    end

    alias LaunchFailedSignal = AppLaunchContext, String ->
    def on_launch_failed(&__block : LaunchFailedSignal)
      __callback = ->(_arg0 : LibGio::AppLaunchContext*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(AppLaunchContext.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("launch-failed", __callback)
    end

    alias LaunchedSignal = AppLaunchContext, Gio::AppInfo, GLib::Variant ->
    def on_launched(&__block : LaunchedSignal)
      __callback = ->(_arg0 : LibGio::AppLaunchContext*, _arg1 : LibGio::LibGio::AppInfo*, _arg2 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(AppLaunchContext.new(_arg0), _arg1, GLib::Variant.new(_arg2))
       __return_value
      }
      connect("launched", __callback)
    end

  end
end

