require "./gesture_single"

module Gtk
  class GestureMultiPress < GestureSingle
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureMultiPress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureMultiPress*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_multi_press_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    def area(rect)
      __return_value = LibGtk.gesture_multi_press_get_area(@pointer.as(LibGtk::GestureMultiPress*), rect)
      __return_value
    end

    def area=(rect)
      LibGtk.gesture_multi_press_set_area(@pointer.as(LibGtk::GestureMultiPress*), rect ? rect.to_unsafe.as(LibGdk::Rectangle*) : nil)
      nil
    end

    alias PressedSignal = GestureMultiPress, Int32, Float64, Float64 ->
    def on_pressed(&__block : PressedSignal)
      __callback = ->(_arg0 : LibGtk::GestureMultiPress*, _arg1 : Int32*, _arg2 : Float64*, _arg3 : Float64*) {
       __return_value = __block.call(GestureMultiPress.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("pressed", __callback)
    end

    alias ReleasedSignal = GestureMultiPress, Int32, Float64, Float64 ->
    def on_released(&__block : ReleasedSignal)
      __callback = ->(_arg0 : LibGtk::GestureMultiPress*, _arg1 : Int32*, _arg2 : Float64*, _arg3 : Float64*) {
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

