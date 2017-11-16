module Gdk
  class AppLaunchContext < Gio::AppLaunchContext
    @pointer : Void*
    def initialize(pointer : LibGdk::AppLaunchContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::AppLaunchContext*)
    end

    def display
      __return_value = LibGdk.app_launch_context_get_display(to_unsafe.as(LibGdk::AppLaunchContext*))
      Gdk::Display.new(__return_value)
    end

    def self.new : self
      __return_value = LibGdk.app_launch_context_new
      cast Gdk::AppLaunchContext.new(__return_value)
    end

    def desktop=(desktop)
      LibGdk.app_launch_context_set_desktop(@pointer.as(LibGdk::AppLaunchContext*), Int32.new(desktop))
      nil
    end

    def display=(display)
      LibGdk.app_launch_context_set_display(@pointer.as(LibGdk::AppLaunchContext*), display.to_unsafe.as(LibGdk::Display*))
      nil
    end

    def icon=(icon)
      LibGdk.app_launch_context_set_icon(@pointer.as(LibGdk::AppLaunchContext*), icon ? icon.to_unsafe.as(LibGio::Icon*) : nil)
      nil
    end

    def icon_name=(icon_name)
      LibGdk.app_launch_context_set_icon_name(@pointer.as(LibGdk::AppLaunchContext*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def screen=(screen)
      LibGdk.app_launch_context_set_screen(@pointer.as(LibGdk::AppLaunchContext*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def timestamp=(timestamp)
      LibGdk.app_launch_context_set_timestamp(@pointer.as(LibGdk::AppLaunchContext*), UInt32.new(timestamp))
      nil
    end

  end
end

