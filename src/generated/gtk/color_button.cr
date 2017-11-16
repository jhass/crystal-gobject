require "./button"

module Gtk
  class ColorButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements ColorChooser
    def alpha
      __return_value = LibGtk.color_button_get_alpha(to_unsafe.as(LibGtk::ColorButton*))
      __return_value
    end

    def color
      __return_value = LibGtk.color_button_get_color(to_unsafe.as(LibGtk::ColorButton*))
      Gdk::Color.new(__return_value)
    end

    def rgba
      __return_value = LibGtk.color_button_get_rgba(to_unsafe.as(LibGtk::ColorButton*))
      Gdk::RGBA.new(__return_value)
    end

    def show_editor
      __return_value = LibGtk.color_button_get_show_editor(to_unsafe.as(LibGtk::ColorButton*))
      __return_value
    end

    def title
      __return_value = LibGtk.color_button_get_title(to_unsafe.as(LibGtk::ColorButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def use_alpha
      __return_value = LibGtk.color_button_get_use_alpha(to_unsafe.as(LibGtk::ColorButton*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.color_button_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_color(color) : self
      __return_value = LibGtk.color_button_new_with_color(color.to_unsafe.as(LibGdk::Color*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_rgba(rgba) : self
      __return_value = LibGtk.color_button_new_with_rgba(rgba.to_unsafe.as(LibGdk::RGBA*))
      cast Gtk::Widget.new(__return_value)
    end

    def alpha
      __return_value = LibGtk.color_button_get_alpha(@pointer.as(LibGtk::ColorButton*))
      __return_value
    end

    def color(color)
      LibGtk.color_button_get_color(@pointer.as(LibGtk::ColorButton*), color)
      nil
    end

    def title
      __return_value = LibGtk.color_button_get_title(@pointer.as(LibGtk::ColorButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def use_alpha
      __return_value = LibGtk.color_button_get_use_alpha(@pointer.as(LibGtk::ColorButton*))
      __return_value
    end

    def alpha=(alpha)
      LibGtk.color_button_set_alpha(@pointer.as(LibGtk::ColorButton*), UInt16.new(alpha))
      nil
    end

    def color=(color)
      LibGtk.color_button_set_color(@pointer.as(LibGtk::ColorButton*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def title=(title)
      LibGtk.color_button_set_title(@pointer.as(LibGtk::ColorButton*), title.to_unsafe)
      nil
    end

    def use_alpha=(use_alpha)
      LibGtk.color_button_set_use_alpha(@pointer.as(LibGtk::ColorButton*), use_alpha)
      nil
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

