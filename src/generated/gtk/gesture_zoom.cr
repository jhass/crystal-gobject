require "./gesture"

module Gtk
  class GestureZoom < Gesture
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureZoom*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureZoom*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_zoom_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    def scale_delta
      __return_value = LibGtk.gesture_zoom_get_scale_delta(@pointer.as(LibGtk::GestureZoom*))
      __return_value
    end

    alias ScaleChangedSignal = GestureZoom, Float64 ->
    def on_scale_changed(&__block : ScaleChangedSignal)
      __callback = ->(_arg0 : LibGtk::GestureZoom*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(GestureZoom.new(_arg0), _arg1)
       __return_value
      }
      connect("scale-changed", __callback)
    end

  end
end

