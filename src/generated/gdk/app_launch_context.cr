module Gdk
  class AppLaunchContext < Gio::AppLaunchContext
    def initialize(@gdk_app_launch_context)
    end

    def to_unsafe
      @gdk_app_launch_context.not_nil!
    end


    def self.new_internal
      __return_value = LibGdk.app_launch_context_new
      Gdk::AppLaunchContext.new(__return_value)
    end

    def desktop=(desktop)
      __return_value = LibGdk.app_launch_context_set_desktop((to_unsafe as LibGdk::AppLaunchContext*), Int32.new(desktop))
      __return_value
    end

    def display=(display)
      __return_value = LibGdk.app_launch_context_set_display((to_unsafe as LibGdk::AppLaunchContext*), (display.to_unsafe as LibGdk::Display*))
      __return_value
    end

    def icon=(icon)
      __return_value = LibGdk.app_launch_context_set_icon((to_unsafe as LibGdk::AppLaunchContext*), icon && (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def icon_name=(icon_name)
      __return_value = LibGdk.app_launch_context_set_icon_name((to_unsafe as LibGdk::AppLaunchContext*), icon_name && icon_name)
      __return_value
    end

    def screen=(screen)
      __return_value = LibGdk.app_launch_context_set_screen((to_unsafe as LibGdk::AppLaunchContext*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def timestamp=(timestamp)
      __return_value = LibGdk.app_launch_context_set_timestamp((to_unsafe as LibGdk::AppLaunchContext*), UInt32.new(timestamp))
      __return_value
    end

  end
end

