require "./box"

module Gtk
  class ColorSelection < Box
    def initialize(@gtk_color_selection)
    end

    def to_unsafe
      @gtk_color_selection.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable





    def self.new_internal
      __return_value = LibGtk.color_selection_new
      Gtk::Widget.new(__return_value)
    end

    def self.palette_from_string(str, colors, n_colors)
      __return_value = LibGtk.color_selection_palette_from_string(str, colors, Int32.new(n_colors))
      __return_value
    end

    def self.palette_to_string(colors, n_colors)
      __return_value = LibGtk.color_selection_palette_to_string(colors, Int32.new(n_colors))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def current_alpha
      __return_value = LibGtk.color_selection_get_current_alpha((to_unsafe as LibGtk::ColorSelection*))
      __return_value
    end

    def current_color(color)
      __return_value = LibGtk.color_selection_get_current_color((to_unsafe as LibGtk::ColorSelection*), color)
      __return_value
    end

    def current_rgba(rgba)
      __return_value = LibGtk.color_selection_get_current_rgba((to_unsafe as LibGtk::ColorSelection*), rgba)
      __return_value
    end

    def has_opacity_control
      __return_value = LibGtk.color_selection_get_has_opacity_control((to_unsafe as LibGtk::ColorSelection*))
      __return_value
    end

    def has_palette
      __return_value = LibGtk.color_selection_get_has_palette((to_unsafe as LibGtk::ColorSelection*))
      __return_value
    end

    def previous_alpha
      __return_value = LibGtk.color_selection_get_previous_alpha((to_unsafe as LibGtk::ColorSelection*))
      __return_value
    end

    def previous_color(color)
      __return_value = LibGtk.color_selection_get_previous_color((to_unsafe as LibGtk::ColorSelection*), color)
      __return_value
    end

    def previous_rgba(rgba)
      __return_value = LibGtk.color_selection_get_previous_rgba((to_unsafe as LibGtk::ColorSelection*), rgba)
      __return_value
    end

    def adjusting?
      __return_value = LibGtk.color_selection_is_adjusting((to_unsafe as LibGtk::ColorSelection*))
      __return_value
    end

    def current_alpha=(alpha)
      __return_value = LibGtk.color_selection_set_current_alpha((to_unsafe as LibGtk::ColorSelection*), UInt16.new(alpha))
      __return_value
    end

    def current_color=(color)
      __return_value = LibGtk.color_selection_set_current_color((to_unsafe as LibGtk::ColorSelection*), (color.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def current_rgba=(rgba)
      __return_value = LibGtk.color_selection_set_current_rgba((to_unsafe as LibGtk::ColorSelection*), (rgba.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def has_opacity_control=(has_opacity)
      __return_value = LibGtk.color_selection_set_has_opacity_control((to_unsafe as LibGtk::ColorSelection*), has_opacity)
      __return_value
    end

    def has_palette=(has_palette)
      __return_value = LibGtk.color_selection_set_has_palette((to_unsafe as LibGtk::ColorSelection*), has_palette)
      __return_value
    end

    def previous_alpha=(alpha)
      __return_value = LibGtk.color_selection_set_previous_alpha((to_unsafe as LibGtk::ColorSelection*), UInt16.new(alpha))
      __return_value
    end

    def previous_color=(color)
      __return_value = LibGtk.color_selection_set_previous_color((to_unsafe as LibGtk::ColorSelection*), (color.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def previous_rgba=(rgba)
      __return_value = LibGtk.color_selection_set_previous_rgba((to_unsafe as LibGtk::ColorSelection*), (rgba.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    alias ColorChangedSignal = ColorSelection -> 
    def on_color_changed(&__block : ColorChangedSignal)
      __callback = ->(_arg0 : LibGtk::ColorSelection*) {
       __return_value = __block.call(ColorSelection.new(_arg0))
       __return_value
      }
      connect("color-changed", __callback)
    end

  end
end

