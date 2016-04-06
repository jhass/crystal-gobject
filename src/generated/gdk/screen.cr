module Gdk
  class Screen < GObject::Object
    def initialize(@gdk_screen)
    end

    def to_unsafe
      @gdk_screen.not_nil!
    end



    def self.default
      __return_value = LibGdk.screen_get_default
      Gdk::Screen.new(__return_value) if __return_value
    end

    def self.height
      __return_value = LibGdk.screen_height
      __return_value
    end

    def self.height_mm
      __return_value = LibGdk.screen_height_mm
      __return_value
    end

    def self.width
      __return_value = LibGdk.screen_width
      __return_value
    end

    def self.width_mm
      __return_value = LibGdk.screen_width_mm
      __return_value
    end

    def active_window
      __return_value = LibGdk.screen_get_active_window((to_unsafe as LibGdk::Screen*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def display
      __return_value = LibGdk.screen_get_display((to_unsafe as LibGdk::Screen*))
      Gdk::Display.new(__return_value)
    end

    def font_options
      __return_value = LibGdk.screen_get_font_options((to_unsafe as LibGdk::Screen*))
      Cairo::FontOptions.new(__return_value) if __return_value
    end

    def height
      __return_value = LibGdk.screen_get_height((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def height_mm
      __return_value = LibGdk.screen_get_height_mm((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def monitor_at_point(x, y)
      __return_value = LibGdk.screen_get_monitor_at_point((to_unsafe as LibGdk::Screen*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def monitor_at_window(window)
      __return_value = LibGdk.screen_get_monitor_at_window((to_unsafe as LibGdk::Screen*), (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def monitor_geometry(monitor_num, dest)
      __return_value = LibGdk.screen_get_monitor_geometry((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num), dest)
      __return_value
    end

    def monitor_height_mm(monitor_num)
      __return_value = LibGdk.screen_get_monitor_height_mm((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num))
      __return_value
    end

    def monitor_plug_name(monitor_num)
      __return_value = LibGdk.screen_get_monitor_plug_name((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def monitor_scale_factor(monitor_num)
      __return_value = LibGdk.screen_get_monitor_scale_factor((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num))
      __return_value
    end

    def monitor_width_mm(monitor_num)
      __return_value = LibGdk.screen_get_monitor_width_mm((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num))
      __return_value
    end

    def monitor_workarea(monitor_num, dest)
      __return_value = LibGdk.screen_get_monitor_workarea((to_unsafe as LibGdk::Screen*), Int32.new(monitor_num), dest)
      __return_value
    end

    def n_monitors
      __return_value = LibGdk.screen_get_n_monitors((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def number
      __return_value = LibGdk.screen_get_number((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def primary_monitor
      __return_value = LibGdk.screen_get_primary_monitor((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def resolution
      __return_value = LibGdk.screen_get_resolution((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def rgba_visual
      __return_value = LibGdk.screen_get_rgba_visual((to_unsafe as LibGdk::Screen*))
      Gdk::Visual.new(__return_value) if __return_value
    end

    def root_window
      __return_value = LibGdk.screen_get_root_window((to_unsafe as LibGdk::Screen*))
      Gdk::Window.new(__return_value)
    end

    def setting(name, value)
      __return_value = LibGdk.screen_get_setting((to_unsafe as LibGdk::Screen*), name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def system_visual
      __return_value = LibGdk.screen_get_system_visual((to_unsafe as LibGdk::Screen*))
      Gdk::Visual.new(__return_value)
    end

    def toplevel_windows
      __return_value = LibGdk.screen_get_toplevel_windows((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def width
      __return_value = LibGdk.screen_get_width((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def width_mm
      __return_value = LibGdk.screen_get_width_mm((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def window_stack
      __return_value = LibGdk.screen_get_window_stack((to_unsafe as LibGdk::Screen*))
      __return_value if __return_value
    end

    def composited?
      __return_value = LibGdk.screen_is_composited((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def list_visuals
      __return_value = LibGdk.screen_list_visuals((to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def make_display_name
      __return_value = LibGdk.screen_make_display_name((to_unsafe as LibGdk::Screen*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def font_options=(options)
      __return_value = LibGdk.screen_set_font_options((to_unsafe as LibGdk::Screen*), options && (options.to_unsafe as LibCairo::FontOptions*))
      __return_value
    end

    def resolution=(dpi)
      __return_value = LibGdk.screen_set_resolution((to_unsafe as LibGdk::Screen*), Float64.new(dpi))
      __return_value
    end

    alias CompositedChangedSignal = Screen -> 
    def on_composited_changed(&__block : CompositedChangedSignal)
      __callback = ->(_arg0 : LibGdk::Screen*) {
       __return_value = __block.call(Screen.new(_arg0))
       __return_value
      }
      connect("composited-changed", __callback)
    end

    alias MonitorsChangedSignal = Screen -> 
    def on_monitors_changed(&__block : MonitorsChangedSignal)
      __callback = ->(_arg0 : LibGdk::Screen*) {
       __return_value = __block.call(Screen.new(_arg0))
       __return_value
      }
      connect("monitors-changed", __callback)
    end

    alias SizeChangedSignal = Screen -> 
    def on_size_changed(&__block : SizeChangedSignal)
      __callback = ->(_arg0 : LibGdk::Screen*) {
       __return_value = __block.call(Screen.new(_arg0))
       __return_value
      }
      connect("size-changed", __callback)
    end

  end
end

