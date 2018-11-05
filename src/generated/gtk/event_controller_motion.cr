require "./event_controller"

module Gtk
  class EventControllerMotion < EventController
    @pointer : Void*
    def initialize(pointer : LibGtk::EventControllerMotion*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventControllerMotion*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.event_controller_motion_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::EventController.new(__return_value)
    end

    alias EnterSignal = EventControllerMotion, Float64, Float64 ->
    def on_enter(&__block : EnterSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerMotion*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(EventControllerMotion.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("enter", __callback)
    end

    alias LeaveSignal = EventControllerMotion ->
    def on_leave(&__block : LeaveSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerMotion*) {
       __return_value = __block.call(EventControllerMotion.new(_arg0))
       __return_value
      }
      connect("leave", __callback)
    end

    alias MotionSignal = EventControllerMotion, Float64, Float64 ->
    def on_motion(&__block : MotionSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerMotion*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(EventControllerMotion.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("motion", __callback)
    end

  end
end

