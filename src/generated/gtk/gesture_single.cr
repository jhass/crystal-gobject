require "./gesture"

module Gtk
  class GestureSingle < Gesture
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureSingle*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureSingle*)
    end

    def button
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "button", gvalue)
      gvalue
    end

    def exclusive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "exclusive", gvalue)
      gvalue.boolean
    end

    def touch_only
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "touch_only", gvalue)
      gvalue.boolean
    end

    def button
      __return_value = LibGtk.gesture_single_get_button(@pointer.as(LibGtk::GestureSingle*))
      __return_value
    end

    def current_button
      __return_value = LibGtk.gesture_single_get_current_button(@pointer.as(LibGtk::GestureSingle*))
      __return_value
    end

    def current_sequence
      __return_value = LibGtk.gesture_single_get_current_sequence(@pointer.as(LibGtk::GestureSingle*))
      Gdk::EventSequence.new(__return_value) if __return_value
    end

    def exclusive
      __return_value = LibGtk.gesture_single_get_exclusive(@pointer.as(LibGtk::GestureSingle*))
      __return_value
    end

    def touch_only
      __return_value = LibGtk.gesture_single_get_touch_only(@pointer.as(LibGtk::GestureSingle*))
      __return_value
    end

    def button=(button)
      LibGtk.gesture_single_set_button(@pointer.as(LibGtk::GestureSingle*), UInt32.new(button))
      nil
    end

    def exclusive=(exclusive)
      LibGtk.gesture_single_set_exclusive(@pointer.as(LibGtk::GestureSingle*), exclusive)
      nil
    end

    def touch_only=(touch_only)
      LibGtk.gesture_single_set_touch_only(@pointer.as(LibGtk::GestureSingle*), touch_only)
      nil
    end

  end
end

