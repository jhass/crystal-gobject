require "./gesture_drag"

module Gtk
  class GesturePan < GestureDrag
    @pointer : Void*
    def initialize(pointer : LibGtk::GesturePan*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GesturePan*)
    end

    def orientation
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "orientation", gvalue)
      gvalue.enum
    end

    def self.new(widget, orientation : Gtk::Orientation) : self
      __return_value = LibGtk.gesture_pan_new(widget.to_unsafe.as(LibGtk::Widget*), orientation)
      cast Gtk::Gesture.new(__return_value)
    end

    def orientation
      __return_value = LibGtk.gesture_pan_get_orientation(@pointer.as(LibGtk::GesturePan*))
      __return_value
    end

    def orientation=(orientation : Gtk::Orientation)
      LibGtk.gesture_pan_set_orientation(@pointer.as(LibGtk::GesturePan*), orientation)
      nil
    end

    alias PanSignal = GesturePan, Gtk::PanDirection, Float64 ->
    def on_pan(&__block : PanSignal)
      __callback = ->(_arg0 : LibGtk::GesturePan*, _arg1 : LibGtk::LibGtk::PanDirection*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GesturePan.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("pan", __callback)
    end

  end
end

