require "./range"

module Gtk
  class Scale < Range
    def initialize(@gtk_scale)
    end

    def to_unsafe
      @gtk_scale.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable




    def self.new_internal(orientation, adjustment)
      __return_value = LibGtk.scale_new(orientation, adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(orientation, min, max, step)
      __return_value = LibGtk.scale_new_with_range(orientation, Float64.new(min), Float64.new(max), Float64.new(step))
      Gtk::Widget.new(__return_value)
    end

    def add_mark(value, position, markup)
      __return_value = LibGtk.scale_add_mark((to_unsafe as LibGtk::Scale*), Float64.new(value), position, markup && markup)
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
      __return_value = LibGtk.scale_get_layout_offsets((to_unsafe as LibGtk::Scale*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def value_pos
      __return_value = LibGtk.scale_get_value_pos((to_unsafe as LibGtk::Scale*))
      __return_value
    end

    def digits=(digits)
      __return_value = LibGtk.scale_set_digits((to_unsafe as LibGtk::Scale*), Int32.new(digits))
      __return_value
    end

    def draw_value=(draw_value)
      __return_value = LibGtk.scale_set_draw_value((to_unsafe as LibGtk::Scale*), draw_value)
      __return_value
    end

    def has_origin=(has_origin)
      __return_value = LibGtk.scale_set_has_origin((to_unsafe as LibGtk::Scale*), has_origin)
      __return_value
    end

    def value_pos=(pos)
      __return_value = LibGtk.scale_set_value_pos((to_unsafe as LibGtk::Scale*), pos)
      __return_value
    end

    alias FormatValueSignal = Scale, Float64 -> UInt8
    def on_format_value(&__block : FormatValueSignal)
      __callback = ->(_arg0 : LibGtk::Scale*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(Scale.new(_arg0), _arg1)
       __return_value
      }
      connect("format-value", __callback)
    end

  end
end

