require "./widget"

module Gtk
  class Range < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Range*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Range*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def adjustment
      __return_value = LibGtk.range_get_adjustment(to_unsafe.as(LibGtk::Range*))
      Gtk::Adjustment.new(__return_value)
    end

    def fill_level
      __return_value = LibGtk.range_get_fill_level(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.range_get_inverted(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def lower_stepper_sensitivity
      __return_value = LibGtk.range_get_lower_stepper_sensitivity(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def restrict_to_fill_level
      __return_value = LibGtk.range_get_restrict_to_fill_level(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def round_digits
      __return_value = LibGtk.range_get_round_digits(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def show_fill_level
      __return_value = LibGtk.range_get_show_fill_level(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def upper_stepper_sensitivity
      __return_value = LibGtk.range_get_upper_stepper_sensitivity(to_unsafe.as(LibGtk::Range*))
      __return_value
    end

    def adjustment
      __return_value = LibGtk.range_get_adjustment(@pointer.as(LibGtk::Range*))
      Gtk::Adjustment.new(__return_value)
    end

    def fill_level
      __return_value = LibGtk.range_get_fill_level(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def flippable
      __return_value = LibGtk.range_get_flippable(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.range_get_inverted(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def lower_stepper_sensitivity
      __return_value = LibGtk.range_get_lower_stepper_sensitivity(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def min_slider_size
      __return_value = LibGtk.range_get_min_slider_size(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def range_rect(range_rect)
      LibGtk.range_get_range_rect(@pointer.as(LibGtk::Range*), range_rect)
      nil
    end

    def restrict_to_fill_level
      __return_value = LibGtk.range_get_restrict_to_fill_level(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def round_digits
      __return_value = LibGtk.range_get_round_digits(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def show_fill_level
      __return_value = LibGtk.range_get_show_fill_level(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def slider_range(slider_start, slider_end)
      LibGtk.range_get_slider_range(@pointer.as(LibGtk::Range*), slider_start, slider_end)
      nil
    end

    def slider_size_fixed
      __return_value = LibGtk.range_get_slider_size_fixed(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def upper_stepper_sensitivity
      __return_value = LibGtk.range_get_upper_stepper_sensitivity(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def value
      __return_value = LibGtk.range_get_value(@pointer.as(LibGtk::Range*))
      __return_value
    end

    def adjustment=(adjustment)
      LibGtk.range_set_adjustment(@pointer.as(LibGtk::Range*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def fill_level=(fill_level)
      LibGtk.range_set_fill_level(@pointer.as(LibGtk::Range*), Float64.new(fill_level))
      nil
    end

    def flippable=(flippable)
      LibGtk.range_set_flippable(@pointer.as(LibGtk::Range*), flippable)
      nil
    end

    def set_increments(step, page)
      LibGtk.range_set_increments(@pointer.as(LibGtk::Range*), Float64.new(step), Float64.new(page))
      nil
    end

    def inverted=(setting)
      LibGtk.range_set_inverted(@pointer.as(LibGtk::Range*), setting)
      nil
    end

    def lower_stepper_sensitivity=(sensitivity : Gtk::SensitivityType)
      LibGtk.range_set_lower_stepper_sensitivity(@pointer.as(LibGtk::Range*), sensitivity)
      nil
    end

    def min_slider_size=(min_size)
      LibGtk.range_set_min_slider_size(@pointer.as(LibGtk::Range*), Int32.new(min_size))
      nil
    end

    def set_range(min, max)
      LibGtk.range_set_range(@pointer.as(LibGtk::Range*), Float64.new(min), Float64.new(max))
      nil
    end

    def restrict_to_fill_level=(restrict_to_fill_level)
      LibGtk.range_set_restrict_to_fill_level(@pointer.as(LibGtk::Range*), restrict_to_fill_level)
      nil
    end

    def round_digits=(round_digits)
      LibGtk.range_set_round_digits(@pointer.as(LibGtk::Range*), Int32.new(round_digits))
      nil
    end

    def show_fill_level=(show_fill_level)
      LibGtk.range_set_show_fill_level(@pointer.as(LibGtk::Range*), show_fill_level)
      nil
    end

    def slider_size_fixed=(size_fixed)
      LibGtk.range_set_slider_size_fixed(@pointer.as(LibGtk::Range*), size_fixed)
      nil
    end

    def upper_stepper_sensitivity=(sensitivity : Gtk::SensitivityType)
      LibGtk.range_set_upper_stepper_sensitivity(@pointer.as(LibGtk::Range*), sensitivity)
      nil
    end

    def value=(value)
      LibGtk.range_set_value(@pointer.as(LibGtk::Range*), Float64.new(value))
      nil
    end

    alias AdjustBoundsSignal = Range, Float64 ->
    def on_adjust_bounds(&__block : AdjustBoundsSignal)
      __callback = ->(_arg0 : LibGtk::Range*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(Range.new(_arg0), _arg1)
       __return_value
      }
      connect("adjust-bounds", __callback)
    end

    alias ChangeValueSignal = Range, Gtk::ScrollType, Float64 -> Bool
    def on_change_value(&__block : ChangeValueSignal)
      __callback = ->(_arg0 : LibGtk::Range*, _arg1 : LibGtk::LibGtk::ScrollType*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(Range.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("change-value", __callback)
    end

    alias MoveSliderSignal = Range, Gtk::ScrollType ->
    def on_move_slider(&__block : MoveSliderSignal)
      __callback = ->(_arg0 : LibGtk::Range*, _arg1 : LibGtk::LibGtk::ScrollType*) {
       __return_value = __block.call(Range.new(_arg0), _arg1)
       __return_value
      }
      connect("move-slider", __callback)
    end

    alias ValueChangedSignal = Range ->
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::Range*) {
       __return_value = __block.call(Range.new(_arg0))
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

