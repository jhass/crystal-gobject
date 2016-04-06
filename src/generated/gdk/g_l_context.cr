module Gdk
  class GLContext < GObject::Object
    def initialize(@gdk_g_l_context)
    end

    def to_unsafe
      @gdk_g_l_context.not_nil!
    end




    def self.clear_current
      __return_value = LibGdk.g_l_context_clear_current
      __return_value
    end

    def self.current
      __return_value = LibGdk.g_l_context_get_current
      Gdk::GLContext.new(__return_value)
    end

    def debug_enabled
      __return_value = LibGdk.g_l_context_get_debug_enabled((to_unsafe as LibGdk::GLContext*))
      __return_value
    end

    def display
      __return_value = LibGdk.g_l_context_get_display((to_unsafe as LibGdk::GLContext*))
      Gdk::Display.new(__return_value)
    end

    def forward_compatible
      __return_value = LibGdk.g_l_context_get_forward_compatible((to_unsafe as LibGdk::GLContext*))
      __return_value
    end

    def required_version(major, minor)
      __return_value = LibGdk.g_l_context_get_required_version((to_unsafe as LibGdk::GLContext*), major && Int32.new(major), minor && Int32.new(minor))
      __return_value
    end

    def shared_context
      __return_value = LibGdk.g_l_context_get_shared_context((to_unsafe as LibGdk::GLContext*))
      Gdk::GLContext.new(__return_value)
    end

    def version(major, minor)
      __return_value = LibGdk.g_l_context_get_version((to_unsafe as LibGdk::GLContext*), Int32.new(major), Int32.new(minor))
      __return_value
    end

    def window
      __return_value = LibGdk.g_l_context_get_window((to_unsafe as LibGdk::GLContext*))
      Gdk::Window.new(__return_value)
    end

    def make_current
      __return_value = LibGdk.g_l_context_make_current((to_unsafe as LibGdk::GLContext*))
      __return_value
    end

    def realize
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdk.g_l_context_realize((to_unsafe as LibGdk::GLContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def debug_enabled=(enabled)
      __return_value = LibGdk.g_l_context_set_debug_enabled((to_unsafe as LibGdk::GLContext*), enabled)
      __return_value
    end

    def forward_compatible=(compatible)
      __return_value = LibGdk.g_l_context_set_forward_compatible((to_unsafe as LibGdk::GLContext*), compatible)
      __return_value
    end

    def set_required_version(major, minor)
      __return_value = LibGdk.g_l_context_set_required_version((to_unsafe as LibGdk::GLContext*), Int32.new(major), Int32.new(minor))
      __return_value
    end

  end
end

