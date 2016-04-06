module Gtk
  class Adjustment < GObject::InitiallyUnowned
    def initialize(@gtk_adjustment)
    end

    def to_unsafe
      @gtk_adjustment.not_nil!
    end







    def self.new_internal(value, lower, upper, step_increment, page_increment, page_size)
      __return_value = LibGtk.adjustment_new(Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      Gtk::Adjustment.new(__return_value)
    end

    def changed
      __return_value = LibGtk.adjustment_changed((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def clamp_page(lower, upper)
      __return_value = LibGtk.adjustment_clamp_page((to_unsafe as LibGtk::Adjustment*), Float64.new(lower), Float64.new(upper))
      __return_value
    end

    def configure(value, lower, upper, step_increment, page_increment, page_size)
      __return_value = LibGtk.adjustment_configure((to_unsafe as LibGtk::Adjustment*), Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      __return_value
    end

    def lower
      __return_value = LibGtk.adjustment_get_lower((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def minimum_increment
      __return_value = LibGtk.adjustment_get_minimum_increment((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def page_increment
      __return_value = LibGtk.adjustment_get_page_increment((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def page_size
      __return_value = LibGtk.adjustment_get_page_size((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def step_increment
      __return_value = LibGtk.adjustment_get_step_increment((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def upper
      __return_value = LibGtk.adjustment_get_upper((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def value
      __return_value = LibGtk.adjustment_get_value((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def lower=(lower)
      __return_value = LibGtk.adjustment_set_lower((to_unsafe as LibGtk::Adjustment*), Float64.new(lower))
      __return_value
    end

    def page_increment=(page_increment)
      __return_value = LibGtk.adjustment_set_page_increment((to_unsafe as LibGtk::Adjustment*), Float64.new(page_increment))
      __return_value
    end

    def page_size=(page_size)
      __return_value = LibGtk.adjustment_set_page_size((to_unsafe as LibGtk::Adjustment*), Float64.new(page_size))
      __return_value
    end

    def step_increment=(step_increment)
      __return_value = LibGtk.adjustment_set_step_increment((to_unsafe as LibGtk::Adjustment*), Float64.new(step_increment))
      __return_value
    end

    def upper=(upper)
      __return_value = LibGtk.adjustment_set_upper((to_unsafe as LibGtk::Adjustment*), Float64.new(upper))
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.adjustment_set_value((to_unsafe as LibGtk::Adjustment*), Float64.new(value))
      __return_value
    end

    def value_changed
      __return_value = LibGtk.adjustment_value_changed((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    alias ChangedSignal = Adjustment -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::Adjustment*) {
       __return_value = __block.call(Adjustment.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias ValueChangedSignal = Adjustment -> 
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::Adjustment*) {
       __return_value = __block.call(Adjustment.new(_arg0))
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

