require "./gesture_single"

module Gtk
  class GestureSwipe < GestureSingle
    def initialize(@gtk_gesture_swipe)
    end

    def to_unsafe
      @gtk_gesture_swipe.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_swipe_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def velocity(velocity_x, velocity_y)
      __return_value = LibGtk.gesture_swipe_get_velocity((to_unsafe as LibGtk::GestureSwipe*), Float64.new(velocity_x), Float64.new(velocity_y))
      __return_value
    end

    alias SwipeSignal = GestureSwipe, Float64, Float64 -> 
    def on_swipe(&__block : SwipeSignal)
      __callback = ->(_arg0 : LibGtk::GestureSwipe*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureSwipe.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("swipe", __callback)
    end

  end
end

