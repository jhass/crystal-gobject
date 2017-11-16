require "./bin"

module Gtk
  class Revealer < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Revealer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Revealer*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child_revealed
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "child_revealed", gvalue)
      gvalue.boolean
    end

    def reveal_child
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "reveal_child", gvalue)
      gvalue.boolean
    end

    def transition_duration
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transition_duration", gvalue)
      gvalue
    end

    def transition_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transition_type", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.revealer_new
      cast Gtk::Widget.new(__return_value)
    end

    def child_revealed
      __return_value = LibGtk.revealer_get_child_revealed(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def reveal_child
      __return_value = LibGtk.revealer_get_reveal_child(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.revealer_get_transition_duration(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.revealer_get_transition_type(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def reveal_child=(reveal_child)
      LibGtk.revealer_set_reveal_child(@pointer.as(LibGtk::Revealer*), reveal_child)
      nil
    end

    def transition_duration=(duration)
      LibGtk.revealer_set_transition_duration(@pointer.as(LibGtk::Revealer*), UInt32.new(duration))
      nil
    end

    def transition_type=(transition : Gtk::RevealerTransitionType)
      LibGtk.revealer_set_transition_type(@pointer.as(LibGtk::Revealer*), transition)
      nil
    end

  end
end

