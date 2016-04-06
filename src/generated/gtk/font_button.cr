require "./button"

module Gtk
  class FontButton < Button
    def initialize(@gtk_font_button)
    end

    def to_unsafe
      @gtk_font_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements FontChooser






    def self.new_internal
      __return_value = LibGtk.font_button_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_font(fontname)
      __return_value = LibGtk.font_button_new_with_font(fontname)
      Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_button_get_font_name((to_unsafe as LibGtk::FontButton*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def show_size
      __return_value = LibGtk.font_button_get_show_size((to_unsafe as LibGtk::FontButton*))
      __return_value
    end

    def show_style
      __return_value = LibGtk.font_button_get_show_style((to_unsafe as LibGtk::FontButton*))
      __return_value
    end

    def title
      __return_value = LibGtk.font_button_get_title((to_unsafe as LibGtk::FontButton*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def use_font
      __return_value = LibGtk.font_button_get_use_font((to_unsafe as LibGtk::FontButton*))
      __return_value
    end

    def use_size
      __return_value = LibGtk.font_button_get_use_size((to_unsafe as LibGtk::FontButton*))
      __return_value
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_button_set_font_name((to_unsafe as LibGtk::FontButton*), fontname)
      __return_value
    end

    def show_size=(show_size)
      __return_value = LibGtk.font_button_set_show_size((to_unsafe as LibGtk::FontButton*), show_size)
      __return_value
    end

    def show_style=(show_style)
      __return_value = LibGtk.font_button_set_show_style((to_unsafe as LibGtk::FontButton*), show_style)
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.font_button_set_title((to_unsafe as LibGtk::FontButton*), title)
      __return_value
    end

    def use_font=(use_font)
      __return_value = LibGtk.font_button_set_use_font((to_unsafe as LibGtk::FontButton*), use_font)
      __return_value
    end

    def use_size=(use_size)
      __return_value = LibGtk.font_button_set_use_size((to_unsafe as LibGtk::FontButton*), use_size)
      __return_value
    end

    alias FontSetSignal = FontButton -> 
    def on_font_set(&__block : FontSetSignal)
      __callback = ->(_arg0 : LibGtk::FontButton*) {
       __return_value = __block.call(FontButton.new(_arg0))
       __return_value
      }
      connect("font-set", __callback)
    end

  end
end

