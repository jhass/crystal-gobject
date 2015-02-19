require "./widget"

module Gtk
  class Range < Widget
    def initialize @gtk_range
    end

    def to_unsafe
      @gtk_range.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable








    def adjustment
      __return_value = LibGtk.range_get_adjustment((to_unsafe as LibGtk::Range*))
      Gtk::Adjustment.new(__return_value)
    end

    def fill_level
      __return_value = LibGtk.range_get_fill_level((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def flippable
      __return_value = LibGtk.range_get_flippable((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.range_get_inverted((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def lower_stepper_sensitivity
      __return_value = LibGtk.range_get_lower_stepper_sensitivity((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def min_slider_size
      __return_value = LibGtk.range_get_min_slider_size((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def range_rect(range_rect)
      __return_value = LibGtk.range_get_range_rect((to_unsafe as LibGtk::Range*), range_rect)
      __return_value
    end

    def restrict_to_fill_level
      __return_value = LibGtk.range_get_restrict_to_fill_level((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def round_digits
      __return_value = LibGtk.range_get_round_digits((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def show_fill_level
      __return_value = LibGtk.range_get_show_fill_level((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def slider_range(slider_start, slider_end)
      __return_value = LibGtk.range_get_slider_range((to_unsafe as LibGtk::Range*), Int32.cast(slider_start), Int32.cast(slider_end))
      __return_value
    end

    def slider_size_fixed
      __return_value = LibGtk.range_get_slider_size_fixed((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def upper_stepper_sensitivity
      __return_value = LibGtk.range_get_upper_stepper_sensitivity((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def value
      __return_value = LibGtk.range_get_value((to_unsafe as LibGtk::Range*))
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.range_set_adjustment((to_unsafe as LibGtk::Range*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def fill_level=(fill_level)
      __return_value = LibGtk.range_set_fill_level((to_unsafe as LibGtk::Range*), Float64.cast(fill_level))
      __return_value
    end

    def flippable=(flippable)
      __return_value = LibGtk.range_set_flippable((to_unsafe as LibGtk::Range*), Bool.cast(flippable))
      __return_value
    end

    def set_increments(step, page)
      __return_value = LibGtk.range_set_increments((to_unsafe as LibGtk::Range*), Float64.cast(step), Float64.cast(page))
      __return_value
    end

    def inverted=(setting)
      __return_value = LibGtk.range_set_inverted((to_unsafe as LibGtk::Range*), Bool.cast(setting))
      __return_value
    end

    def lower_stepper_sensitivity=(sensitivity)
      __return_value = LibGtk.range_set_lower_stepper_sensitivity((to_unsafe as LibGtk::Range*), sensitivity)
      __return_value
    end

    def min_slider_size=(min_size)
      __return_value = LibGtk.range_set_min_slider_size((to_unsafe as LibGtk::Range*), Int32.cast(min_size))
      __return_value
    end

    def set_range(min, max)
      __return_value = LibGtk.range_set_range((to_unsafe as LibGtk::Range*), Float64.cast(min), Float64.cast(max))
      __return_value
    end

    def restrict_to_fill_level=(restrict_to_fill_level)
      __return_value = LibGtk.range_set_restrict_to_fill_level((to_unsafe as LibGtk::Range*), Bool.cast(restrict_to_fill_level))
      __return_value
    end

    def round_digits=(round_digits)
      __return_value = LibGtk.range_set_round_digits((to_unsafe as LibGtk::Range*), Int32.cast(round_digits))
      __return_value
    end

    def show_fill_level=(show_fill_level)
      __return_value = LibGtk.range_set_show_fill_level((to_unsafe as LibGtk::Range*), Bool.cast(show_fill_level))
      __return_value
    end

    def slider_size_fixed=(size_fixed)
      __return_value = LibGtk.range_set_slider_size_fixed((to_unsafe as LibGtk::Range*), Bool.cast(size_fixed))
      __return_value
    end

    def upper_stepper_sensitivity=(sensitivity)
      __return_value = LibGtk.range_set_upper_stepper_sensitivity((to_unsafe as LibGtk::Range*), sensitivity)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.range_set_value((to_unsafe as LibGtk::Range*), Float64.cast(value))
      __return_value
    end

  end
end

