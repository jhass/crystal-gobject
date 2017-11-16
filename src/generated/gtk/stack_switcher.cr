require "./box"

module Gtk
  class StackSwitcher < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::StackSwitcher*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StackSwitcher*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def icon_size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_size", gvalue)
      gvalue
    end

    def stack
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stack", gvalue)
      Gtk::Stack.cast(gvalue.object)
    end

    def self.new : self
      __return_value = LibGtk.stack_switcher_new
      cast Gtk::Widget.new(__return_value)
    end

    def stack
      __return_value = LibGtk.stack_switcher_get_stack(@pointer.as(LibGtk::StackSwitcher*))
      Gtk::Stack.new(__return_value) if __return_value
    end

    def stack=(stack)
      LibGtk.stack_switcher_set_stack(@pointer.as(LibGtk::StackSwitcher*), stack ? stack.to_unsafe.as(LibGtk::Stack*) : nil)
      nil
    end

  end
end

