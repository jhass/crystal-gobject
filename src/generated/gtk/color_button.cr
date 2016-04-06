require "./button"

module Gtk
  class ColorButton < Button
    def initialize(@gtk_color_button)
    end

    def to_unsafe
      @gtk_color_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements ColorChooser





    def self.new_internal
      __return_value = LibGtk.color_button_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_color(color)
      __return_value = LibGtk.color_button_new_with_color((color.to_unsafe as LibGdk::Color*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_rgba(rgba)
      __return_value = LibGtk.color_button_new_with_rgba((rgba.to_unsafe as LibGdk::RGBA*))
      Gtk::Widget.new(__return_value)
    end

    def alpha
      __return_value = LibGtk.color_button_get_alpha((to_unsafe as LibGtk::ColorButton*))
      __return_value
    end

    def color(color)
      __return_value = LibGtk.color_button_get_color((to_unsafe as LibGtk::ColorButton*), color)
      __return_value
    end

    def title
      __return_value = LibGtk.color_button_get_title((to_unsafe as LibGtk::ColorButton*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def use_alpha
      __return_value = LibGtk.color_button_get_use_alpha((to_unsafe as LibGtk::ColorButton*))
      __return_value
    end

    def alpha=(alpha)
      __return_value = LibGtk.color_button_set_alpha((to_unsafe as LibGtk::ColorButton*), UInt16.new(alpha))
      __return_value
    end

    def color=(color)
      __return_value = LibGtk.color_button_set_color((to_unsafe as LibGtk::ColorButton*), (color.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.color_button_set_title((to_unsafe as LibGtk::ColorButton*), title)
      __return_value
    end

    def use_alpha=(use_alpha)
      __return_value = LibGtk.color_button_set_use_alpha((to_unsafe as LibGtk::ColorButton*), use_alpha)
      __return_value
    end

    alias ColorSetSignal = ColorButton -> 
    def on_color_set(&__block : ColorSetSignal)
      __callback = ->(_arg0 : LibGtk::ColorButton*) {
       __return_value = __block.call(ColorButton.new(_arg0))
       __return_value
      }
      connect("color-set", __callback)
    end

  end
end

