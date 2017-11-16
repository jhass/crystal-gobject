module Gtk
  class Adjustment < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGtk::Adjustment*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Adjustment*)
    end

    def lower
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "lower", gvalue)
      gvalue
    end

    def page_increment
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "page_increment", gvalue)
      gvalue
    end

    def page_size
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "page_size", gvalue)
      gvalue
    end

    def step_increment
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "step_increment", gvalue)
      gvalue
    end

    def upper
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "upper", gvalue)
      gvalue
    end

    def value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def self.new(value, lower, upper, step_increment, page_increment, page_size) : self
      __return_value = LibGtk.adjustment_new(Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      cast Gtk::Adjustment.new(__return_value)
    end

    def changed
      LibGtk.adjustment_changed(@pointer.as(LibGtk::Adjustment*))
      nil
    end

    def clamp_page(lower, upper)
      LibGtk.adjustment_clamp_page(@pointer.as(LibGtk::Adjustment*), Float64.new(lower), Float64.new(upper))
      nil
    end

    def configure(value, lower, upper, step_increment, page_increment, page_size)
      LibGtk.adjustment_configure(@pointer.as(LibGtk::Adjustment*), Float64.new(value), Float64.new(lower), Float64.new(upper), Float64.new(step_increment), Float64.new(page_increment), Float64.new(page_size))
      nil
    end

    def lower
      __return_value = LibGtk.adjustment_get_lower(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def minimum_increment
      __return_value = LibGtk.adjustment_get_minimum_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_increment
      __return_value = LibGtk.adjustment_get_page_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def page_size
      __return_value = LibGtk.adjustment_get_page_size(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def step_increment
      __return_value = LibGtk.adjustment_get_step_increment(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def upper
      __return_value = LibGtk.adjustment_get_upper(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def value
      __return_value = LibGtk.adjustment_get_value(@pointer.as(LibGtk::Adjustment*))
      __return_value
    end

    def lower=(lower)
      LibGtk.adjustment_set_lower(@pointer.as(LibGtk::Adjustment*), Float64.new(lower))
      nil
    end

    def page_increment=(page_increment)
      LibGtk.adjustment_set_page_increment(@pointer.as(LibGtk::Adjustment*), Float64.new(page_increment))
      nil
    end

    def page_size=(page_size)
      LibGtk.adjustment_set_page_size(@pointer.as(LibGtk::Adjustment*), Float64.new(page_size))
      nil
    end

    def step_increment=(step_increment)
      LibGtk.adjustment_set_step_increment(@pointer.as(LibGtk::Adjustment*), Float64.new(step_increment))
      nil
    end

    def upper=(upper)
      LibGtk.adjustment_set_upper(@pointer.as(LibGtk::Adjustment*), Float64.new(upper))
      nil
    end

    def value=(value)
      LibGtk.adjustment_set_value(@pointer.as(LibGtk::Adjustment*), Float64.new(value))
      nil
    end

    def value_changed
      LibGtk.adjustment_value_changed(@pointer.as(LibGtk::Adjustment*))
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

