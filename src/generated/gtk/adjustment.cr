module Gtk
  class Adjustment < GObject::InitiallyUnowned
    def initialize @gtk_adjustment
    end

    def to_unsafe
      @gtk_adjustment.not_nil!
    end

    def lower=(__value)
      LibGtk.adjustment_set_lower((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def page_increment=(__value)
      LibGtk.adjustment_set_page_increment((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def page_size=(__value)
      LibGtk.adjustment_set_page_size((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def step_increment=(__value)
      LibGtk.adjustment_set_step_increment((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def upper=(__value)
      LibGtk.adjustment_set_upper((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def value=(__value)
      LibGtk.adjustment_set_value((to_unsafe as LibGtk::Adjustment*), Float64.cast(__value))
    end

    def self.new_internal(value, lower, upper, step_increment, page_increment, page_size)
      __return_value = LibGtk.adjustment_new(Float64.cast(value), Float64.cast(lower), Float64.cast(upper), Float64.cast(step_increment), Float64.cast(page_increment), Float64.cast(page_size))
      Gtk::Adjustment.new(__return_value)
    end

    def changed
      __return_value = LibGtk.adjustment_changed((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def clamp_page(lower, upper)
      __return_value = LibGtk.adjustment_clamp_page((to_unsafe as LibGtk::Adjustment*), Float64.cast(lower), Float64.cast(upper))
      __return_value
    end

    def configure(value, lower, upper, step_increment, page_increment, page_size)
      __return_value = LibGtk.adjustment_configure((to_unsafe as LibGtk::Adjustment*), Float64.cast(value), Float64.cast(lower), Float64.cast(upper), Float64.cast(step_increment), Float64.cast(page_increment), Float64.cast(page_size))
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
      __return_value = LibGtk.adjustment_set_lower((to_unsafe as LibGtk::Adjustment*), Float64.cast(lower))
      __return_value
    end

    def page_increment=(page_increment)
      __return_value = LibGtk.adjustment_set_page_increment((to_unsafe as LibGtk::Adjustment*), Float64.cast(page_increment))
      __return_value
    end

    def page_size=(page_size)
      __return_value = LibGtk.adjustment_set_page_size((to_unsafe as LibGtk::Adjustment*), Float64.cast(page_size))
      __return_value
    end

    def step_increment=(step_increment)
      __return_value = LibGtk.adjustment_set_step_increment((to_unsafe as LibGtk::Adjustment*), Float64.cast(step_increment))
      __return_value
    end

    def upper=(upper)
      __return_value = LibGtk.adjustment_set_upper((to_unsafe as LibGtk::Adjustment*), Float64.cast(upper))
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.adjustment_set_value((to_unsafe as LibGtk::Adjustment*), Float64.cast(value))
      __return_value
    end

    def value_changed
      __return_value = LibGtk.adjustment_value_changed((to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

  end
end

