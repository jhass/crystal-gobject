require "./event_controller"

module Gtk
  class EventControllerKey < EventController
    @pointer : Void*
    def initialize(pointer : LibGtk::EventControllerKey*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventControllerKey*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.event_controller_key_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::EventController.new(__return_value)
    end

    def forward(widget)
      __return_value = LibGtk.event_controller_key_forward(@pointer.as(LibGtk::EventControllerKey*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def group
      __return_value = LibGtk.event_controller_key_get_group(@pointer.as(LibGtk::EventControllerKey*))
      __return_value
    end

    def im_context
      __return_value = LibGtk.event_controller_key_get_im_context(@pointer.as(LibGtk::EventControllerKey*))
      Gtk::IMContext.new(__return_value)
    end

    def im_context=(im_context)
      LibGtk.event_controller_key_set_im_context(@pointer.as(LibGtk::EventControllerKey*), im_context.to_unsafe.as(LibGtk::IMContext*))
      nil
    end

    alias FocusInSignal = EventControllerKey ->
    def on_focus_in(&__block : FocusInSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*) {
       __return_value = __block.call(EventControllerKey.new(_arg0))
       __return_value
      }
      connect("focus-in", __callback)
    end

    alias FocusOutSignal = EventControllerKey ->
    def on_focus_out(&__block : FocusOutSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*) {
       __return_value = __block.call(EventControllerKey.new(_arg0))
       __return_value
      }
      connect("focus-out", __callback)
    end

    alias ImUpdateSignal = EventControllerKey ->
    def on_im_update(&__block : ImUpdateSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*) {
       __return_value = __block.call(EventControllerKey.new(_arg0))
       __return_value
      }
      connect("im-update", __callback)
    end

    alias KeyPressedSignal = EventControllerKey, UInt32, UInt32, Gdk::ModifierType -> Bool
    def on_key_pressed(&__block : KeyPressedSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::LibGdk::ModifierType*) {
       __return_value = __block.call(EventControllerKey.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("key-pressed", __callback)
    end

    alias KeyReleasedSignal = EventControllerKey, UInt32, UInt32, Gdk::ModifierType ->
    def on_key_released(&__block : KeyReleasedSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::LibGdk::ModifierType*) {
       __return_value = __block.call(EventControllerKey.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("key-released", __callback)
    end

    alias ModifiersSignal = EventControllerKey, Gdk::ModifierType -> Bool
    def on_modifiers(&__block : ModifiersSignal)
      __callback = ->(_arg0 : LibGtk::EventControllerKey*, _arg1 : LibGtk::LibGdk::ModifierType*) {
       __return_value = __block.call(EventControllerKey.new(_arg0), _arg1)
       __return_value
      }
      connect("modifiers", __callback)
    end

  end
end

