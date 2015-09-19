require "./widget"

module Gtk
  class GLArea < Widget
    def initialize @gtk_g_l_area
    end

    def to_unsafe
      @gtk_g_l_area.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable





    def self.new_internal
      __return_value = LibGtk.g_l_area_new
      Gtk::Widget.new(__return_value)
    end

    def attach_buffers
      __return_value = LibGtk.g_l_area_attach_buffers((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def auto_render
      __return_value = LibGtk.g_l_area_get_auto_render((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def context
      __return_value = LibGtk.g_l_area_get_context((to_unsafe as LibGtk::GLArea*))
      Gdk::GLContext.new(__return_value)
    end

    def error
      __return_value = LibGtk.g_l_area_get_error((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def has_alpha
      __return_value = LibGtk.g_l_area_get_has_alpha((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def has_depth_buffer
      __return_value = LibGtk.g_l_area_get_has_depth_buffer((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def has_stencil_buffer
      __return_value = LibGtk.g_l_area_get_has_stencil_buffer((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def required_version(major, minor)
      __return_value = LibGtk.g_l_area_get_required_version((to_unsafe as LibGtk::GLArea*), Int32.new(major), Int32.new(minor))
      __return_value
    end

    def make_current
      __return_value = LibGtk.g_l_area_make_current((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def queue_render
      __return_value = LibGtk.g_l_area_queue_render((to_unsafe as LibGtk::GLArea*))
      __return_value
    end

    def auto_render=(auto_render)
      __return_value = LibGtk.g_l_area_set_auto_render((to_unsafe as LibGtk::GLArea*), Bool.new(auto_render))
      __return_value
    end

    def error=(error)
      __return_value = LibGtk.g_l_area_set_error((to_unsafe as LibGtk::GLArea*), error && error)
      __return_value
    end

    def has_alpha=(has_alpha)
      __return_value = LibGtk.g_l_area_set_has_alpha((to_unsafe as LibGtk::GLArea*), Bool.new(has_alpha))
      __return_value
    end

    def has_depth_buffer=(has_depth_buffer)
      __return_value = LibGtk.g_l_area_set_has_depth_buffer((to_unsafe as LibGtk::GLArea*), Bool.new(has_depth_buffer))
      __return_value
    end

    def has_stencil_buffer=(has_stencil_buffer)
      __return_value = LibGtk.g_l_area_set_has_stencil_buffer((to_unsafe as LibGtk::GLArea*), Bool.new(has_stencil_buffer))
      __return_value
    end

    def set_required_version(major, minor)
      __return_value = LibGtk.g_l_area_set_required_version((to_unsafe as LibGtk::GLArea*), Int32.new(major), Int32.new(minor))
      __return_value
    end

  end
end

