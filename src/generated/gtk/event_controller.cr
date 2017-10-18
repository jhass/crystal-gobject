module Gtk
  class EventController < GObject::Object
    @gtk_event_controller : LibGtk::EventController*?
    def initialize(@gtk_event_controller : LibGtk::EventController*)
    end

    def to_unsafe
      @gtk_event_controller.not_nil!
    end

    def propagation_phase
      __return_value = LibGtk.event_controller_get_propagation_phase(to_unsafe.as(LibGtk::EventController*))
      __return_value
    end

    def widget
      __return_value = LibGtk.event_controller_get_widget(to_unsafe.as(LibGtk::EventController*))
      Gtk::Widget.new(__return_value)
    end

    def propagation_phase
      __return_value = LibGtk.event_controller_get_propagation_phase(to_unsafe.as(LibGtk::EventController*))
      __return_value
    end

    def widget
      __return_value = LibGtk.event_controller_get_widget(to_unsafe.as(LibGtk::EventController*))
      Gtk::Widget.new(__return_value)
    end

    def handle_event(event)
      __return_value = LibGtk.event_controller_handle_event(to_unsafe.as(LibGtk::EventController*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def reset
      LibGtk.event_controller_reset(to_unsafe.as(LibGtk::EventController*))
      nil
    end

    def propagation_phase=(phase : Gtk::PropagationPhase)
      LibGtk.event_controller_set_propagation_phase(to_unsafe.as(LibGtk::EventController*), phase)
      nil
    end

  end
end

