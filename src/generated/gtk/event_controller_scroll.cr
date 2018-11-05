require "./event_controller"

module Gtk
  class EventControllerScroll < EventController
    @pointer : Void*
    def initialize(pointer : LibGtk::EventControllerScroll*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventControllerScroll*)
    end

    def flags
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "flags", gvalue)
      gvalue.enum
    end

    def self.new(widget, flags : Gtk::EventControllerScrollFlags) : self
      __return_value = LibGtk.event_controller_scroll_new(widget.to_unsafe.as(LibGtk::Widget*), flags)
      cast Gtk::EventController.new(__return_value)
    end

    def flags
      __return_value = LibGtk.event_controller_scroll_get_flags(@pointer.as(LibGtk::EventControllerScroll*))
      __return_value
    end

    def flags=(flags : Gtk::EventControllerScrollFlags)
      LibGtk.event_controller_scroll_set_flags(@pointer.as(LibGtk::EventControllerScroll*), flags)
      nil
    end

    alias DecelerateSignal = EventControllerScroll, Float64, Float64 ->
    def on_decelerate(&__block : DecelerateSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerScroll*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(EventControllerScroll.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("decelerate", __callback)
    end

    alias ScrollSignal = EventControllerScroll, Float64, Float64 ->
    def on_scroll(&__block : ScrollSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerScroll*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(EventControllerScroll.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("scroll", __callback)
    end

    alias ScrollBeginSignal = EventControllerScroll ->
    def on_scroll_begin(&__block : ScrollBeginSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerScroll*) {
       __return_value = __block.call(EventControllerScroll.new(_arg0))
       __return_value
      }
      connect("scroll-begin", __callback)
    end

    alias ScrollEndSignal = EventControllerScroll ->
    def on_scroll_end(&__block : ScrollEndSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerScroll*) {
       __return_value = __block.call(EventControllerScroll.new(_arg0))
       __return_value
      }
      connect("scroll-end", __callback)
    end

  end
end

