require "./gesture_single"

module Gtk
  class GestureLongPress < GestureSingle
    def initialize(@gtk_gesture_long_press)
    end

    def to_unsafe
      @gtk_gesture_long_press.not_nil!
    end


    def self.new_internal(widget)
      __return_value = LibGtk.gesture_long_press_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    alias CancelledSignal = GestureLongPress -> 
    def on_cancelled(&__block : CancelledSignal)
      __callback = ->(_arg0 : LibGtk::GestureLongPress*) {
       __return_value = __block.call(GestureLongPress.new(_arg0))
       __return_value
      }
      connect("cancelled", __callback)
    end

    alias PressedSignal = GestureLongPress, Float64, Float64 -> 
    def on_pressed(&__block : PressedSignal)
      __callback = ->(_arg0 : LibGtk::GestureLongPress*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureLongPress.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("pressed", __callback)
    end

  end
end

