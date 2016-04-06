require "./button"

module Gtk
  class ScaleButton < Button
    def initialize(@gtk_scale_button)
    end

    def to_unsafe
      @gtk_scale_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements Orientable




    def self.new_internal(size, min, max, step, icons)
      __return_value = LibGtk.scale_button_new(Int32.new(size), Float64.new(min), Float64.new(max), Float64.new(step), icons && icons)
      Gtk::Widget.new(__return_value)
    end

    def adjustment
      __return_value = LibGtk.scale_button_get_adjustment((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Adjustment.new(__return_value)
    end

    def minus_button
      __return_value = LibGtk.scale_button_get_minus_button((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Button.new(__return_value)
    end

    def plus_button
      __return_value = LibGtk.scale_button_get_plus_button((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Button.new(__return_value)
    end

    def popup
      __return_value = LibGtk.scale_button_get_popup((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Widget.new(__return_value)
    end

    def value
      __return_value = LibGtk.scale_button_get_value((to_unsafe as LibGtk::ScaleButton*))
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.scale_button_set_adjustment((to_unsafe as LibGtk::ScaleButton*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def icons=(icons)
      __return_value = LibGtk.scale_button_set_icons((to_unsafe as LibGtk::ScaleButton*), icons)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.scale_button_set_value((to_unsafe as LibGtk::ScaleButton*), Float64.new(value))
      __return_value
    end

    alias PopdownSignal = ScaleButton -> 
    def on_popdown(&__block : PopdownSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*) {
       __return_value = __block.call(ScaleButton.new(_arg0))
       __return_value
      }
      connect("popdown", __callback)
    end

    alias PopupSignal = ScaleButton -> 
    def on_popup(&__block : PopupSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*) {
       __return_value = __block.call(ScaleButton.new(_arg0))
       __return_value
      }
      connect("popup", __callback)
    end

    alias ValueChangedSignal = ScaleButton, Float64 -> 
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(ScaleButton.new(_arg0), _arg1)
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

