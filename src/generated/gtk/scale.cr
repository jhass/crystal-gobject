require "./range"

module Gtk
  class Scale < Range
    def initialize @gtk_scale
    end

    def to_unsafe
      @gtk_scale.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def digits=(__value)
      LibGtk.scale_set_digits((to_unsafe as LibGtk::Scale*), Int32.cast(__value))
    end

    def draw_value=(__value)
      LibGtk.scale_set_draw_value((to_unsafe as LibGtk::Scale*), Bool.cast(__value))
    end

    def has_origin=(__value)
      LibGtk.scale_set_has_origin((to_unsafe as LibGtk::Scale*), Bool.cast(__value))
    end

    def value_pos=(__value)
      LibGtk.scale_set_value_pos((to_unsafe as LibGtk::Scale*), __value)
    end

    def self.new_internal(orientation, adjustment)
      __return_value = LibGtk.scale_new(orientation, (adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(orientation, min, max, step)
      __return_value = LibGtk.scale_new_with_range(orientation, Float64.cast(min), Float64.cast(max), Float64.cast(step))
      Gtk::Widget.new(__return_value)
    end

    def add_mark(value, position, markup)
      __return_value = LibGtk.scale_add_mark((to_unsafe as LibGtk::Scale*), Float64.cast(value), position, markup)
      __return_value
    end

    def clear_marks
      __return_value = LibGtk.scale_clear_marks((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def digits
      __return_value = LibGtk.scale_get_digits((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def draw_value
      __return_value = LibGtk.scale_get_draw_value((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def has_origin
      __return_value = LibGtk.scale_get_has_origin((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def layout
      __return_value = LibGtk.scale_get_layout((to_unsafe as LibGtk::Scale*))
      Pango::Layout.new(__return_value)
    end

    def layout_offsets(x, y)
      __return_value = LibGtk.scale_get_layout_offsets((to_unsafe as LibGtk::Scale*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def value_pos
      __return_value = LibGtk.scale_get_value_pos((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def digits=(digits)
      __return_value = LibGtk.scale_set_digits((to_unsafe as LibGtk::Scale*), Int32.cast(digits))
      __return_value
    end

    def draw_value=(draw_value)
      __return_value = LibGtk.scale_set_draw_value((to_unsafe as LibGtk::Scale*), Bool.cast(draw_value))
      __return_value
    end

    def has_origin=(has_origin)
      __return_value = LibGtk.scale_set_has_origin((to_unsafe as LibGtk::Scale*), Bool.cast(has_origin))
      __return_value
    end

    def value_pos=(pos)
      __return_value = LibGtk.scale_set_value_pos((to_unsafe as LibGtk::Scale*), pos)
      __return_value
    end

  end
end

