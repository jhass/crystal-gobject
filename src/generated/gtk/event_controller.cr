module Gtk
  class EventController < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::EventController*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventController*)
    end

    def propagation_phase
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "propagation_phase", gvalue)
      gvalue.enum
    end

    def widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def propagation_phase
      __return_value = LibGtk.event_controller_get_propagation_phase(@pointer.as(LibGtk::EventController*))
      __return_value
    end

    def widget
      __return_value = LibGtk.event_controller_get_widget(@pointer.as(LibGtk::EventController*))
      Gtk::Widget.new(__return_value)
    end

    def handle_event(event)
      __return_value = LibGtk.event_controller_handle_event(@pointer.as(LibGtk::EventController*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def reset
      LibGtk.event_controller_reset(@pointer.as(LibGtk::EventController*))
      nil
    end

    def propagation_phase=(phase : Gtk::PropagationPhase)
      LibGtk.event_controller_set_propagation_phase(@pointer.as(LibGtk::EventController*), phase)
      nil
    end

  end
end

