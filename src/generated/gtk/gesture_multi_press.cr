require "./gesture_single"

module Gtk
  class GestureMultiPress < GestureSingle
    def initialize(@gtk_gesture_multi_press)
    end

    def to_unsafe
      @gtk_gesture_multi_press.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_multi_press_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def area(rect)
      __return_value = LibGtk.gesture_multi_press_get_area((to_unsafe as LibGtk::GestureMultiPress*), rect)
      __return_value
    end

    def area=(rect)
      __return_value = LibGtk.gesture_multi_press_set_area((to_unsafe as LibGtk::GestureMultiPress*), rect && (rect.to_unsafe as LibGdk::Rectangle*))
      __return_value
    end

    alias PressedSignal = GestureMultiPress, Int32, Float64, Float64 -> 
    def on_pressed(&__block : PressedSignal)
      __callback = ->(_arg0 : LibGtk::GestureMultiPress*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Float64*, _arg3 : LibGtk::Float64*) {
       __return_value = __block.call(GestureMultiPress.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("pressed", __callback)
    end

    alias ReleasedSignal = GestureMultiPress, Int32, Float64, Float64 -> 
    def on_released(&__block : ReleasedSignal)
      __callback = ->(_arg0 : LibGtk::GestureMultiPress*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Float64*, _arg3 : LibGtk::Float64*) {
       __return_value = __block.call(GestureMultiPress.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("released", __callback)
    end

    alias StoppedSignal = GestureMultiPress -> 
    def on_stopped(&__block : StoppedSignal)
      __callback = ->(_arg0 : LibGtk::GestureMultiPress*) {
       __return_value = __block.call(GestureMultiPress.new(_arg0))
       __return_value
      }
      connect("stopped", __callback)
    end

  end
end

