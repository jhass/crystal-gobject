require "./bin"

module Gtk
  class EventBox < Bin
    @gtk_event_box : LibGtk::EventBox*?
    def initialize(@gtk_event_box : LibGtk::EventBox*)
    end

    def to_unsafe
      @gtk_event_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new : self
      __return_value = LibGtk.event_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def above_child
      __return_value = LibGtk.event_box_get_above_child(to_unsafe.as(LibGtk::EventBox*))
      __return_value
    end

    def visible_window
      __return_value = LibGtk.event_box_get_visible_window(to_unsafe.as(LibGtk::EventBox*))
      __return_value
    end

    def above_child=(above_child)
      __return_value = LibGtk.event_box_set_above_child(to_unsafe.as(LibGtk::EventBox*), above_child)
      __return_value
    end

    def visible_window=(visible_window)
      __return_value = LibGtk.event_box_set_visible_window(to_unsafe.as(LibGtk::EventBox*), visible_window)
      __return_value
    end

  end
end

