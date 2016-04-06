require "./gesture_single"

module Gtk
  class GestureDrag < GestureSingle
    def initialize(@gtk_gesture_drag)
    end

    def to_unsafe
      @gtk_gesture_drag.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_drag_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def offset(x, y)
      __return_value = LibGtk.gesture_drag_get_offset((to_unsafe as LibGtk::GestureDrag*), x && Float64.new(x), y && Float64.new(y))
      __return_value
    end

    def start_point(x, y)
      __return_value = LibGtk.gesture_drag_get_start_point((to_unsafe as LibGtk::GestureDrag*), x && Float64.new(x), y && Float64.new(y))
      __return_value
    end

    alias DragBeginSignal = GestureDrag, Float64, Float64 -> 
    def on_drag_begin(&__block : DragBeginSignal)
      __callback = ->(_arg0 : LibGtk::GestureDrag*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureDrag.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("drag-begin", __callback)
    end

    alias DragEndSignal = GestureDrag, Float64, Float64 -> 
    def on_drag_end(&__block : DragEndSignal)
      __callback = ->(_arg0 : LibGtk::GestureDrag*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureDrag.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("drag-end", __callback)
    end

    alias DragUpdateSignal = GestureDrag, Float64, Float64 -> 
    def on_drag_update(&__block : DragUpdateSignal)
      __callback = ->(_arg0 : LibGtk::GestureDrag*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureDrag.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("drag-update", __callback)
    end

  end
end

