require "./entry"

module Gtk
  class SpinButton < Entry
    @pointer : Void*
    def initialize(pointer : LibGtk::SpinButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SpinButton*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements Editable
    # Implements Orientable
    def adjustment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "adjustment", gvalue)
      Gtk::Adjustment.cast(gvalue.object)
    end

    def climb_rate
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "climb_rate", gvalue)
      gvalue
    end

    def digits
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "digits", gvalue)
      gvalue
    end

    def numeric
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "numeric", gvalue)
      gvalue.boolean
    end

    def snap_to_ticks
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "snap_to_ticks", gvalue)
      gvalue.boolean
    end

    def update_policy
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "update_policy", gvalue)
      gvalue.enum
    end

    def value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def wrap
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap", gvalue)
      gvalue.boolean
    end

    def self.new(adjustment, climb_rate, digits) : self
      __return_value = LibGtk.spin_button_new(adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, Float64.new(climb_rate), UInt32.new(digits))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(min, max, step) : self
      __return_value = LibGtk.spin_button_new_with_range(Float64.new(min), Float64.new(max), Float64.new(step))
      cast Gtk::Widget.new(__return_value)
    end

    def configure(adjustment, climb_rate, digits)
      LibGtk.spin_button_configure(@pointer.as(LibGtk::SpinButton*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, Float64.new(climb_rate), UInt32.new(digits))
      nil
    end

    def adjustment
      __return_value = LibGtk.spin_button_get_adjustment(@pointer.as(LibGtk::SpinButton*))
      Gtk::Adjustment.new(__return_value)
    end

    def digits
      __return_value = LibGtk.spin_button_get_digits(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def increments(step, page)
      LibGtk.spin_button_get_increments(@pointer.as(LibGtk::SpinButton*), step, page)
      nil
    end

    def numeric
      __return_value = LibGtk.spin_button_get_numeric(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def range(min, max)
      LibGtk.spin_button_get_range(@pointer.as(LibGtk::SpinButton*), min, max)
      nil
    end

    def snap_to_ticks
      __return_value = LibGtk.spin_button_get_snap_to_ticks(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def update_policy
      __return_value = LibGtk.spin_button_get_update_policy(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def value
      __return_value = LibGtk.spin_button_get_value(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def value_as_int
      __return_value = LibGtk.spin_button_get_value_as_int(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def wrap
      __return_value = LibGtk.spin_button_get_wrap(@pointer.as(LibGtk::SpinButton*))
      __return_value
    end

    def adjustment=(adjustment)
      LibGtk.spin_button_set_adjustment(@pointer.as(LibGtk::SpinButton*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def digits=(digits)
      LibGtk.spin_button_set_digits(@pointer.as(LibGtk::SpinButton*), UInt32.new(digits))
      nil
    end

    def set_increments(step, page)
      LibGtk.spin_button_set_increments(@pointer.as(LibGtk::SpinButton*), Float64.new(step), Float64.new(page))
      nil
    end

    def numeric=(numeric)
      LibGtk.spin_button_set_numeric(@pointer.as(LibGtk::SpinButton*), numeric)
      nil
    end

    def set_range(min, max)
      LibGtk.spin_button_set_range(@pointer.as(LibGtk::SpinButton*), Float64.new(min), Float64.new(max))
      nil
    end

    def snap_to_ticks=(snap_to_ticks)
      LibGtk.spin_button_set_snap_to_ticks(@pointer.as(LibGtk::SpinButton*), snap_to_ticks)
      nil
    end

    def update_policy=(policy : Gtk::SpinButtonUpdatePolicy)
      LibGtk.spin_button_set_update_policy(@pointer.as(LibGtk::SpinButton*), policy)
      nil
    end

    def value=(value)
      LibGtk.spin_button_set_value(@pointer.as(LibGtk::SpinButton*), Float64.new(value))
      nil
    end

    def wrap=(wrap)
      LibGtk.spin_button_set_wrap(@pointer.as(LibGtk::SpinButton*), wrap)
      nil
    end

    def spin(direction : Gtk::SpinType, increment)
      LibGtk.spin_button_spin(@pointer.as(LibGtk::SpinButton*), direction, Float64.new(increment))
      nil
    end

    def update
      LibGtk.spin_button_update(@pointer.as(LibGtk::SpinButton*))
      nil
    end

    alias ChangeValueSignal = SpinButton, Gtk::ScrollType ->
    def on_change_value(&__block : ChangeValueSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*, _arg1 : LibGtk::ScrollType*) {
       __return_value = __block.call(SpinButton.new(_arg0), _arg1)
       __return_value
      }
      connect("change-value", __callback)
    end

    alias InputSignal = SpinButton, Float64 -> Int32
    def on_input(&__block : InputSignal)
      __callback = ->(_arg0 : LibGtk::SpinButton*, _arg1 : Float64*) {
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

