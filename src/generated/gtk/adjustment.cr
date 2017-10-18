module Gtk
  class Adjustment < GObject::InitiallyUnowned
    @gtk_adjustment : LibGtk::Adjustment*?
    def initialize(@gtk_adjustment : LibGtk::Adjustment*)
    end

    def to_unsafe
      @gtk_adjustment.not_nil!
    end

    def lower
      __return_value = LibGtk.adjustment_get_lower(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_increment
      __return_value = LibGtk.adjustment_get_page_increment(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_size
      __return_value = LibGtk.adjustment_get_page_size(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def step_increment
      __return_value = LibGtk.adjustment_get_step_increment(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def upper
      __return_value = LibGtk.adjustment_get_upper(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def value
      __return_value = LibGtk.adjustment_get_value(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def self.new(value, lower, upper, step_increment, page_increment, page_size) : self
      __return_value = LibGtk.adjustment_new(Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      cast Gtk::Adjustment.new(__return_value)
    end

    def changed
      LibGtk.adjustment_changed(to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def clamp_page(lower, upper)
      LibGtk.adjustment_clamp_page(to_unsafe.as(LibGtk::Adjustment*), Float64.new(lower), Float64.new(upper))
      nil
    end

    def configure(value, lower, upper, step_increment, page_increment, page_size)
      LibGtk.adjustment_configure(to_unsafe.as(LibGtk::Adjustment*), Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      nil
    end

    def lower
      __return_value = LibGtk.adjustment_get_lower(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def minimum_increment
      __return_value = LibGtk.adjustment_get_minimum_increment(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_increment
      __return_value = LibGtk.adjustment_get_page_increment(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_size
      __return_value = LibGtk.adjustment_get_page_size(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def step_increment
      __return_value = LibGtk.adjustment_get_step_increment(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def upper
      __return_value = LibGtk.adjustment_get_upper(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def value
      __return_value = LibGtk.adjustment_get_value(to_unsafe.as(LibGtk::Adjustment*))
      __return_value
    end

    def lower=(lower)
      LibGtk.adjustment_set_lower(to_unsafe.as(LibGtk::Adjustment*), Float64.new(lower))
      nil
    end

    def page_increment=(page_increment)
      LibGtk.adjustment_set_page_increment(to_unsafe.as(LibGtk::Adjustment*), Float64.new(page_increment))
      nil
    end

    def page_size=(page_size)
      LibGtk.adjustment_set_page_size(to_unsafe.as(LibGtk::Adjustment*), Float64.new(page_size))
      nil
    end

    def step_increment=(step_increment)
      LibGtk.adjustment_set_step_increment(to_unsafe.as(LibGtk::Adjustment*), Float64.new(step_increment))
      nil
    end

    def upper=(upper)
      LibGtk.adjustment_set_upper(to_unsafe.as(LibGtk::Adjustment*), Float64.new(upper))
      nil
    end

    def value=(value)
      LibGtk.adjustment_set_value(to_unsafe.as(LibGtk::Adjustment*), Float64.new(value))
      nil
    end

    def value_changed
      LibGtk.adjustment_value_changed(to_unsafe.as(LibGtk::Adjustment*))
      nil
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

