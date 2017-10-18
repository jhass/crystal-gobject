module Gdk
  class GLContext < GObject::Object
    @gdk_g_l_context : LibGdk::GLContext*?
    def initialize(@gdk_g_l_context : LibGdk::GLContext*)
    end

    def to_unsafe
      @gdk_g_l_context.not_nil!
    end

    def display
      __return_value = LibGdk.g_l_context_get_display(to_unsafe.as(LibGdk::GLContext*))
      Gdk::Display.new(__return_value)
    end

    def shared_context
      __return_value = LibGdk.g_l_context_get_shared_context(to_unsafe.as(LibGdk::GLContext*))
      Gdk::GLContext.new(__return_value)
    end

    def window
      __return_value = LibGdk.g_l_context_get_window(to_unsafe.as(LibGdk::GLContext*))
      Gdk::Window.new(__return_value)
    end

    def self.clear_current
      LibGdk.g_l_context_clear_current
      nil
    end

    def self.current
      __return_value = LibGdk.g_l_context_get_current
      Gdk::GLContext.new(__return_value) if __return_value
    end

    def debug_enabled
      __return_value = LibGdk.g_l_context_get_debug_enabled(to_unsafe.as(LibGdk::GLContext*))
      __return_value
    end

    def display
      __return_value = LibGdk.g_l_context_get_display(to_unsafe.as(LibGdk::GLContext*))
      Gdk::Display.new(__return_value) if __return_value
    end

    def forward_compatible
      __return_value = LibGdk.g_l_context_get_forward_compatible(to_unsafe.as(LibGdk::GLContext*))
      __return_value
    end

    def required_version(major, minor)
      LibGdk.g_l_context_get_required_version(to_unsafe.as(LibGdk::GLContext*), major, minor)
      nil
    end

    def shared_context
      __return_value = LibGdk.g_l_context_get_shared_context(to_unsafe.as(LibGdk::GLContext*))
      Gdk::GLContext.new(__return_value) if __return_value
    end

    def use_es
      __return_value = LibGdk.g_l_context_get_use_es(to_unsafe.as(LibGdk::GLContext*))
      __return_value
    end

    def version(major, minor)
      LibGdk.g_l_context_get_version(to_unsafe.as(LibGdk::GLContext*), major, minor)
      nil
    end

    def window
      __return_value = LibGdk.g_l_context_get_window(to_unsafe.as(LibGdk::GLContext*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def legacy?
      __return_value = LibGdk.g_l_context_is_legacy(to_unsafe.as(LibGdk::GLContext*))
      __return_value
    end

    def make_current
      LibGdk.g_l_context_make_current(to_unsafe.as(LibGdk::GLContext*))
      nil
    end

    def realize
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdk.g_l_context_realize(to_unsafe.as(LibGdk::GLContext*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def debug_enabled=(enabled)
      LibGdk.g_l_context_set_debug_enabled(to_unsafe.as(LibGdk::GLContext*), enabled)
      nil
    end

    def forward_compatible=(compatible)
      LibGdk.g_l_context_set_forward_compatible(to_unsafe.as(LibGdk::GLContext*), compatible)
      nil
    end

    def set_required_version(major, minor)
      LibGdk.g_l_context_set_required_version(to_unsafe.as(LibGdk::GLContext*), Int32.new(major), Int32.new(minor))
      nil
    end

    def use_es=(use_es)
      LibGdk.g_l_context_set_use_es(to_unsafe.as(LibGdk::GLContext*), Int32.new(use_es))
      nil
    end

  end
end

