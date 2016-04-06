require "./entry"

module Gtk
  class SpinButton < Entry
    def initialize(@gtk_spin_button)
    end

    def to_unsafe
      @gtk_spin_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements Editable
    # Implements Orientable








    def self.new_internal(adjustment, climb_rate, digits)
      __return_value = LibGtk.spin_button_new(adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*), Float64.new(climb_rate), UInt32.new(digits))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(min, max, step)
      __return_value = LibGtk.spin_button_new_with_range(Float64.new(min), Float64.new(max), Float64.new(step))
      Gtk::Widget.new(__return_value)
    end

    def configure(adjustment, climb_rate, digits)
      __return_value = LibGtk.spin_button_configure((to_unsafe as LibGtk::SpinButton*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*), Float64.new(climb_rate), UInt32.new(digits))
      __return_value
    end

    def adjustment
      __return_value = LibGtk.spin_button_get_adjustment((to_unsafe as LibGtk::SpinButton*))
      Gtk::Adjustment.new(__return_value)
    end

    def digits
      __return_value = LibGtk.spin_button_get_digits((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def increments(step, page)
      __return_value = LibGtk.spin_button_get_increments((to_unsafe as LibGtk::SpinButton*), Float64.new(step), Float64.new(page))
      __return_value
    end

    def numeric
      __return_value = LibGtk.spin_button_get_numeric((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def range(min, max)
      __return_value = LibGtk.spin_button_get_range((to_unsafe as LibGtk::SpinButton*), Float64.new(min), Float64.new(max))
      __return_value
    end

    def snap_to_ticks
      __return_value = LibGtk.spin_button_get_snap_to_ticks((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def update_policy
      __return_value = LibGtk.spin_button_get_update_policy((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def value
      __return_value = LibGtk.spin_button_get_value((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def value_as_int
      __return_value = LibGtk.spin_button_get_value_as_int((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def wrap
      __return_value = LibGtk.spin_button_get_wrap((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.spin_button_set_adjustment((to_unsafe as LibGtk::SpinButton*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def digits=(digits)
      __return_value = LibGtk.spin_button_set_digits((to_unsafe as LibGtk::SpinButton*), UInt32.new(digits))
      __return_value
    end

    def set_increments(step, page)
      __return_value = LibGtk.spin_button_set_increments((to_unsafe as LibGtk::SpinButton*), Float64.new(step), Float64.new(page))
      __return_value
    end

    def numeric=(numeric)
      __return_value = LibGtk.spin_button_set_numeric((to_unsafe as LibGtk::SpinButton*), numeric)
      __return_value
    end

    def set_range(min, max)
      __return_value = LibGtk.spin_button_set_range((to_unsafe as LibGtk::SpinButton*), Float64.new(min), Float64.new(max))
      __return_value
    end

    def snap_to_ticks=(snap_to_ticks)
      __return_value = LibGtk.spin_button_set_snap_to_ticks((to_unsafe as LibGtk::SpinButton*), snap_to_ticks)
      __return_value
    end

    def update_policy=(policy)
      __return_value = LibGtk.spin_button_set_update_policy((to_unsafe as LibGtk::SpinButton*), policy)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.spin_button_set_value((to_unsafe as LibGtk::SpinButton*), Float64.new(value))
      __return_value
    end

    def wrap=(wrap)
      __return_value = LibGtk.spin_button_set_wrap((to_unsafe as LibGtk::SpinButton*), wrap)
      __return_value
    end

    def spin(direction, increment)
      __return_value = LibGtk.spin_button_spin((to_unsafe as LibGtk::SpinButton*), direction, Float64.new(increment))
      __return_value
    end

    def update
      __return_value = LibGtk.spin_button_update((to_unsafe as LibGtk::SpinButton*))
      __return_value
    end

    alias ChangeValueSignal = SpinButton, Gtk::ScrollType -> 
    def on_change_value(&__block : ChangeValueSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*, _arg1 : LibGtk::LibGtk::ScrollType*) {
       __return_value = __block.call(SpinButton.new(_arg0), _arg1)
       __return_value
      }
      connect("change-value", __callback)
    end

    alias InputSignal = SpinButton, Float64 -> Int32
    def on_input(&__block : InputSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(SpinButton.new(_arg0), _arg1)
       Int32.new(__return_value)
      }
      connect("input", __callback)
    end

    alias OutputSignal = SpinButton -> Bool
    def on_output(&__block : OutputSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*) {
       __return_value = __block.call(SpinButton.new(_arg0))
       __return_value
      }
      connect("output", __callback)
    end

    alias ValueChangedSignal = SpinButton -> 
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*) {
       __return_value = __block.call(SpinButton.new(_arg0))
       __return_value
      }
      connect("value-changed", __callback)
    end

    alias WrappedSignal = SpinButton -> 
    def on_wrapped(&__block : WrappedSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*) {
       __return_value = __block.call(SpinButton.new(_arg0))
       __return_value
      }
      connect("wrapped", __callback)
    end

  end
end

