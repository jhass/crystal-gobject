require "./widget"

module Gtk
  class GLArea < Widget
    def initialize(@gtk_g_l_area)
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
      __return_value = LibGtk.g_l_area_set_auto_render((to_unsafe as LibGtk::GLArea*), auto_render)
      __return_value
    end

    def error=(error)
      __return_value = LibGtk.g_l_area_set_error((to_unsafe as LibGtk::GLArea*), error && error)
      __return_value
    end

    def has_alpha=(has_alpha)
      __return_value = LibGtk.g_l_area_set_has_alpha((to_unsafe as LibGtk::GLArea*), has_alpha)
      __return_value
    end

    def has_depth_buffer=(has_depth_buffer)
      __return_value = LibGtk.g_l_area_set_has_depth_buffer((to_unsafe as LibGtk::GLArea*), has_depth_buffer)
      __return_value
    end

    def has_stencil_buffer=(has_stencil_buffer)
      __return_value = LibGtk.g_l_area_set_has_stencil_buffer((to_unsafe as LibGtk::GLArea*), has_stencil_buffer)
      __return_value
    end

    def set_required_version(major, minor)
      __return_value = LibGtk.g_l_area_set_required_version((to_unsafe as LibGtk::GLArea*), Int32.new(major), Int32.new(minor))
      __return_value
    end

    alias CreateContextSignal = GLArea -> Gdk::GLContext
    def on_create_context(&__block : CreateContextSignal)
      __callback = ->(_arg0 : LibGtk::GLArea*) {
       __return_value = __block.call(GLArea.new(_arg0))
       __return_value
      }
      connect("create-context", __callback)
    end

    alias RenderSignal = GLArea, Gdk::GLContext -> Bool
    def on_render(&__block : RenderSignal)
      __callback = ->(_arg0 : LibGtk::GLArea*, _arg1 : LibGtk::LibGdk::GLContext*) {
       __return_value = __block.call(GLArea.new(_arg0), Gdk::GLContext.new(_arg1))
       __return_value
      }
      connect("render", __callback)
    end

    alias ResizeSignal = GLArea, Int32, Int32 -> 
    def on_resize(&__block : ResizeSignal)
      __callback = ->(_arg0 : LibGtk::GLArea*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(GLArea.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("resize", __callback)
    end

  end
end

