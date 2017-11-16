require "./bin"

module Gtk
  class EventBox < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::EventBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def above_child
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "above_child", gvalue)
      gvalue.boolean
    end

    def visible_window
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_window", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.event_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def above_child
      __return_value = LibGtk.event_box_get_above_child(@pointer.as(LibGtk::EventBox*))
      __return_value
    end

    def visible_window
      __return_value = LibGtk.event_box_get_visible_window(@pointer.as(LibGtk::EventBox*))
      __return_value
    end

    def above_child=(above_child)
      LibGtk.event_box_set_above_child(@pointer.as(LibGtk::EventBox*), above_child)
      nil
    end

    def visible_window=(visible_window)
      LibGtk.event_box_set_visible_window(@pointer.as(LibGtk::EventBox*), visible_window)
      nil
    end

  end
end

