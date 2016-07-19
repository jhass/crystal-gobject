module Gdk
  class Event
    include GObject::WrappedType

    @gdk_event : LibGdk::Event*?
    def initialize(@gdk_event : LibGdk::Event*)
    end

    def to_unsafe
      @gdk_event.not_nil!.as(Void*)
    end

    def self.new(type : Gdk::EventType) : self
      __return_value = LibGdk.event_new(type)
      cast Gdk::Event.new(__return_value)
    end

    def angle(event2, angle)
      __return_value = LibGdk.event_get_angle(to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), angle)
      __return_value
    end

    def center(event2, x, y)
      __return_value = LibGdk.event_get_center(to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), x, y)
      __return_value
    end

    def distance(event2, distance)
      __return_value = LibGdk.event_get_distance(to_unsafe.as(LibGdk::Event*), event2.to_unsafe.as(LibGdk::Event*), distance)
      __return_value
    end

    def copy
      __return_value = LibGdk.event_copy(to_unsafe.as(LibGdk::Event*))
      Gdk::Event.new(__return_value)
    end

    def free
      __return_value = LibGdk.event_free(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def axis(axis_use : Gdk::AxisUse, value)
      __return_value = LibGdk.event_get_axis(to_unsafe.as(LibGdk::Event*), axis_use, value)
      __return_value
    end

    def button(button)
      __return_value = LibGdk.event_get_button(to_unsafe.as(LibGdk::Event*), button)
      __return_value
    end

    def click_count(click_count)
      __return_value = LibGdk.event_get_click_count(to_unsafe.as(LibGdk::Event*), click_count)
      __return_value
    end

    def coords(x_win, y_win)
      __return_value = LibGdk.event_get_coords(to_unsafe.as(LibGdk::Event*), x_win, y_win)
      __return_value
    end

    def device
      __return_value = LibGdk.event_get_device(to_unsafe.as(LibGdk::Event*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def event_sequence
      __return_value = LibGdk.event_get_event_sequence(to_unsafe.as(LibGdk::Event*))
      Gdk::EventSequence.new(__return_value)
    end

    def event_type
      __return_value = LibGdk.event_get_event_type(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def keycode(keycode)
      __return_value = LibGdk.event_get_keycode(to_unsafe.as(LibGdk::Event*), keycode)
      __return_value
    end

    def keyval(keyval)
      __return_value = LibGdk.event_get_keyval(to_unsafe.as(LibGdk::Event*), keyval)
      __return_value
    end

    def root_coords(x_root, y_root)
      __return_value = LibGdk.event_get_root_coords(to_unsafe.as(LibGdk::Event*), x_root, y_root)
      __return_value
    end

    def screen
      __return_value = LibGdk.event_get_screen(to_unsafe.as(LibGdk::Event*))
      Gdk::Screen.new(__return_value)
    end

    def scroll_deltas(delta_x, delta_y)
      __return_value = LibGdk.event_get_scroll_deltas(to_unsafe.as(LibGdk::Event*), delta_x, delta_y)
      __return_value
    end

    def scroll_direction(direction : Gdk::ScrollDirection)
      __return_value = LibGdk.event_get_scroll_direction(to_unsafe.as(LibGdk::Event*), direction)
      __return_value
    end

    def seat
      __return_value = LibGdk.event_get_seat(to_unsafe.as(LibGdk::Event*))
      Gdk::Seat.new(__return_value)
    end

    def source_device
      __return_value = LibGdk.event_get_source_device(to_unsafe.as(LibGdk::Event*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def state(state : Gdk::ModifierType)
      __return_value = LibGdk.event_get_state(to_unsafe.as(LibGdk::Event*), state)
      __return_value
    end

    def time
      __return_value = LibGdk.event_get_time(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def window
      __return_value = LibGdk.event_get_window(to_unsafe.as(LibGdk::Event*))
      Gdk::Window.new(__return_value)
    end

    def scroll_stop_event?
      __return_value = LibGdk.event_is_scroll_stop_event(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def put
      __return_value = LibGdk.event_put(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def device=(device)
      __return_value = LibGdk.event_set_device(to_unsafe.as(LibGdk::Event*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def screen=(screen)
      __return_value = LibGdk.event_set_screen(to_unsafe.as(LibGdk::Event*), screen.to_unsafe.as(LibGdk::Screen*))
      __return_value
    end

    def source_device=(device)
      __return_value = LibGdk.event_set_source_device(to_unsafe.as(LibGdk::Event*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def triggers_context_menu
      __return_value = LibGdk.event_triggers_context_menu(to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def self.get
      __return_value = LibGdk.event_get
      Gdk::Event.new(__return_value) if __return_value
    end

    def self.handler_set(func, data, notify)
      __return_value = LibGdk.event_handler_set(func, data && data, notify)
      __return_value
    end

    def self.peek
      __return_value = LibGdk.event_peek
      Gdk::Event.new(__return_value) if __return_value
    end

    def self.request_motions(event)
      __return_value = LibGdk.event_request_motions(event.to_unsafe.as(LibGdk::EventMotion*))
      __return_value
    end

  end
end

