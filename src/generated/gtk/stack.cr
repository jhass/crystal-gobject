require "./container"

module Gtk
  class Stack < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Stack*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Stack*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def hhomogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hhomogeneous", gvalue)
      gvalue.boolean
    end

    def homogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "homogeneous", gvalue)
      gvalue.boolean
    end

    def interpolate_size
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "interpolate_size", gvalue)
      gvalue.boolean
    end

    def transition_duration
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transition_duration", gvalue)
      gvalue
    end

    def transition_running
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transition_running", gvalue)
      gvalue.boolean
    end

    def transition_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "transition_type", gvalue)
      gvalue.enum
    end

    def vhomogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "vhomogeneous", gvalue)
      gvalue.boolean
    end

    def visible_child
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_child", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def visible_child_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_child_name", gvalue)
      gvalue.string
    end

    def self.new : self
      __return_value = LibGtk.stack_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_named(child, name)
      LibGtk.stack_add_named(@pointer.as(LibGtk::Stack*), child.to_unsafe.as(LibGtk::Widget*), name.to_unsafe)
      nil
    end

    def add_titled(child, name, title)
      LibGtk.stack_add_titled(@pointer.as(LibGtk::Stack*), child.to_unsafe.as(LibGtk::Widget*), name.to_unsafe, title.to_unsafe)
      nil
    end

    def child_by_name(name)
      __return_value = LibGtk.stack_get_child_by_name(@pointer.as(LibGtk::Stack*), name.to_unsafe)
      Gtk::Widget.new(__return_value) if __return_value
    end

    def hhomogeneous
      __return_value = LibGtk.stack_get_hhomogeneous(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.stack_get_homogeneous(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def interpolate_size
      __return_value = LibGtk.stack_get_interpolate_size(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.stack_get_transition_duration(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def transition_running
      __return_value = LibGtk.stack_get_transition_running(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.stack_get_transition_type(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def vhomogeneous
      __return_value = LibGtk.stack_get_vhomogeneous(@pointer.as(LibGtk::Stack*))
      __return_value
    end

    def visible_child
      __return_value = LibGtk.stack_get_visible_child(@pointer.as(LibGtk::Stack*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def visible_child_name
      __return_value = LibGtk.stack_get_visible_child_name(@pointer.as(LibGtk::Stack*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def hhomogeneous=(hhomogeneous)
      LibGtk.stack_set_hhomogeneous(@pointer.as(LibGtk::Stack*), hhomogeneous)
      nil
    end

    def homogeneous=(homogeneous)
      LibGtk.stack_set_homogeneous(@pointer.as(LibGtk::Stack*), homogeneous)
      nil
    end

    def interpolate_size=(interpolate_size)
      LibGtk.stack_set_interpolate_size(@pointer.as(LibGtk::Stack*), interpolate_size)
      nil
    end

    def transition_duration=(duration)
      LibGtk.stack_set_transition_duration(@pointer.as(LibGtk::Stack*), UInt32.new(duration))
      nil
    end

    def transition_type=(transition : Gtk::StackTransitionType)
      LibGtk.stack_set_transition_type(@pointer.as(LibGtk::Stack*), transition)
      nil
    end

    def vhomogeneous=(vhomogeneous)
      LibGtk.stack_set_vhomogeneous(@pointer.as(LibGtk::Stack*), vhomogeneous)
      nil
    end

    def visible_child=(child)
      LibGtk.stack_set_visible_child(@pointer.as(LibGtk::Stack*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def set_visible_child_full(name, transition : Gtk::StackTransitionType)
      LibGtk.stack_set_visible_child_full(@pointer.as(LibGtk::Stack*), name.to_unsafe, transition)
      nil
    end

    def visible_child_name=(name)
      LibGtk.stack_set_visible_child_name(@pointer.as(LibGtk::Stack*), name.to_unsafe)
      nil
    end

  end
end

