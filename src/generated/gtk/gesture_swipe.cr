require "./gesture_single"

module Gtk
  class GestureSwipe < GestureSingle
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureSwipe*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureSwipe*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_swipe_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    def velocity(velocity_x, velocity_y)
      __return_value = LibGtk.gesture_swipe_get_velocity(@pointer.as(LibGtk::GestureSwipe*), velocity_x, velocity_y)
      __return_value
    end

    alias SwipeSignal = GestureSwipe, Float64, Float64 ->
    def on_swipe(&__block : SwipeSignal)
      __callback = ->(_arg0 : LibGtk::GestureSwipe*, _arg1 : Float64*, _arg2 : Float64*) {
       __return_value = __block.call(GestureSwipe.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("swipe", __callback)
    end

  end
end

