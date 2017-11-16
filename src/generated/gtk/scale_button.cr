require "./button"

module Gtk
  class ScaleButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::ScaleButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScaleButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements Orientable
    def adjustment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "adjustment", gvalue)
      Gtk::Adjustment.cast(gvalue.object)
    end

    def icons
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icons", gvalue)
      gvalue
    end

    def size
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size", gvalue)
      gvalue.enum
    end

    def value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def self.new(size, min, max, step, icons) : self
      __return_value = LibGtk.scale_button_new(Int32.new(size), Float64.new(min), Float64.new(max), Float64.new(step), icons ? icons : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def adjustment
      __return_value = LibGtk.scale_button_get_adjustment(@pointer.as(LibGtk::ScaleButton*))
      Gtk::Adjustment.new(__return_value)
    end

    def minus_button
      __return_value = LibGtk.scale_button_get_minus_button(@pointer.as(LibGtk::ScaleButton*))
      Gtk::Button.new(__return_value)
    end

    def plus_button
      __return_value = LibGtk.scale_button_get_plus_button(@pointer.as(LibGtk::ScaleButton*))
      Gtk::Button.new(__return_value)
    end

    def popup
      __return_value = LibGtk.scale_button_get_popup(@pointer.as(LibGtk::ScaleButton*))
      Gtk::Widget.new(__return_value)
    end

    def value
      __return_value = LibGtk.scale_button_get_value(@pointer.as(LibGtk::ScaleButton*))
      __return_value
    end

    def adjustment=(adjustment)
      LibGtk.scale_button_set_adjustment(@pointer.as(LibGtk::ScaleButton*), adjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def icons=(icons)
      LibGtk.scale_button_set_icons(@pointer.as(LibGtk::ScaleButton*), icons)
      nil
    end

    def value=(value)
      LibGtk.scale_button_set_value(@pointer.as(LibGtk::ScaleButton*), Float64.new(value))
      nil
    end

    alias PopdownSignal = ScaleButton ->
    def on_popdown(&__block : PopdownSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*) {
       __return_value = __block.call(ScaleButton.new(_arg0))
       __return_value
      }
      connect("popdown", __callback)
    end

    alias PopupSignal = ScaleButton ->
    def on_popup(&__block : PopupSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*) {
       __return_value = __block.call(ScaleButton.new(_arg0))
       __return_value
      }
      connect("popup", __callback)
    end

    alias ValueChangedSignal = ScaleButton, Float64 ->
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibGtk::ScaleButton*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(ScaleButton.new(_arg0), _arg1)
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

